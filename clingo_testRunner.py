import sys, os, argparse
from subprocess import PIPE, STDOUT, CalledProcessError, TimeoutExpired, check_output

m_anno = "%mnr:"
s_anno = "incs:"

file_name = None

failed_tests = 0
succeeded_tests = 0

timeout_seconds = 10


def error_exit(reason):
    print("❌ [%s] Error: %s" % (sys.argv[0], reason))
    exit(1)


# Parse MNR annotation
def parse_mnr(line, file):
    try:
        return int(line.split(":")[1])
    except ValueError:
        error_exit(f"wrong usage of '%mnr: N' annotation in {file} in line: {line}")


# Parse INCS annotation
def parse_incs(line):
    line = line.split(":")[1]
    line = line.split()
    return " ".join(line).split()  # to prevent empty elements


def run_test(path, model_size, set_of_sets):
    cmd = ["clingo", "-n", "0", path, file_name]

    try:
        output = check_output(cmd, timeout=timeout_seconds)
    except CalledProcessError as e:
        # clingo exists with 30 as retun code
        if e.returncode != 30 and e.returncode != 20:
            return print(f"❗ Error: '{' '.join(e.cmd)}' failed")
        else:
            output = e.output
    except TimeoutExpired as e:
        return print(
            f"❗ Error: '{' '.join(e.cmd)}' failed because timeout of {timeout_seconds}s was expired"
        )

    output = output.decode("utf-8").split("\n")

    actual_model_size = None
    found_sets = [False] * len(set_of_sets)

    answer_next_line = False
    for line in output:
        if answer_next_line:
            answer_next_line = False
            aset = line.split()
            for i, s in enumerate(set_of_sets):
                if set(s) <= set(aset):
                    found_sets[i] = True
        line = "".join(line.split())
        if "Models:" in line:
            actual_model_size = parse_mnr(line, path)
        if "Answer:" in line:
            answer_next_line = True

    model_pass = True
    global succeeded_tests
    global failed_tests

    if actual_model_size is not model_size and model_size != -1:
        model_pass = False
        print(
            "❌ FAILED -- %d model(s) found instead of %d"
            % (actual_model_size, model_size)
        )

    set_failed = False
    for i, r in enumerate(found_sets):
        if not r:
            set_failed = True
            print(f"❌ FAILED -- {' '.join(set_of_sets[i])} is in no answer set")

    if not set_failed and model_pass:
        succeeded_tests += 1
        print("✅ PASSED -- All models and sets passed the test")
    else:
        failed_tests += 1


def test_for_file(path):

    print(
        """
  ----------
  Processing %s ...
  ---------
  """
        % path
    )

    try:
        with open(path) as f:
            lines = f.read().split("\n")
    except FileNotFoundError:
        return print(f"❗ Error: {path} does not exist")

    model_size = -1
    set_with_facts = []

    for line in lines:
        # remove whitespaces
        tmp = "".join(line.split())
        if m_anno in tmp:
            model_size = parse_mnr(line, path)
        elif s_anno in tmp:
            set_with_facts.append(parse_incs(line))

    if model_size == -1:
        print("❗ WARNING -- No model size given. This leads to inaccurate tests!")
    else:
        print(f"💡 INFO -- Exactly {model_size} model(s) must be found")

    for s in set_with_facts:
        print(f"💡 INFO -- Result must include {' '.join(s)}")

    print(
        f"""
    🏃 Test running ...
  """
    )

    run_test(path, model_size, set_with_facts)


def main():
    parser = argparse.ArgumentParser(description="Automate clingo tests.")
    parser.add_argument(
        "file", metavar="FILE", type=str, nargs=1, help=".lp file to test"
    )
    parser.add_argument(
        "-t",
        "--timeout",
        metavar="T",
        type=int,
        nargs=1,
        help="timeout per test in seconds",
    )
    parser.add_argument(
        "size",
        metavar="SIZE",
        type=int,
        nargs=1,
        help="Number of test files. Must be of format <file_to_test>_<x>.lp, must be in same folder as the file to test and <x> must begin with 0",
    )

    args = parser.parse_args()

    global file_name
    global timeout_seconds
    file_name = args.file[0]

    tmp = args.timeout
    if tmp is not None:
        timeout_seconds = int(tmp[0])

    if not os.path.isfile(file_name):
        error_exit(f"File {file_name} does not exist")

    test_file_count = int(args.size[0])
    test_prefix = file_name.split(".")[0]

    for i in range(test_file_count):
        test_for_file(f"{test_prefix}_{i}.lp")

    print(
        f"""
------------------------

RESULTS:"""
    )

    if succeeded_tests is test_file_count:
        print("🎉 All tests passed!")
    elif succeeded_tests > 0:
        print(f"✅ PASSED: {succeeded_tests}")

    if failed_tests != 0:
        print(f"❌ FAILED: {failed_tests}")
    if failed_tests + succeeded_tests is not test_file_count:
        print(
            f"❗ INTERRUPTED BY AN ERROR: {test_file_count - (failed_tests + succeeded_tests)}"
        )

    print("")


if __name__ == "__main__":
    main()
