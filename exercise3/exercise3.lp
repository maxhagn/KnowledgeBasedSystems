% add all worksFor relations to set
worksFor(X,Z) :- worksFor(X,Y), worksFor(Y,Z).

% person is in a group if explicitly assigned
personInGroup(NAME,GROUP) :- assigned(NAME,GROUP).

% person is in group if worksFor a person who is explicitly assigned
personInGroup(NAME,GROUP) :- worksFor(NAME,BOSS), assigned(BOSS,GROUP).

% person is working for university if related to group
personAtUniversity(NAME,SALARY) :- person(NAME,SALARY), personInGroup(NAME,_).

% person is student if not related to group
personIsStudent(NAME,SALARY) :- person(NAME,SALARY), not personAtUniversity(NAME,_).

% add total student fees to set, fee is student count multiplied by 100
studentFees(FEE) :-  FEE = STUDENT_COUNT * 100, STUDENT_COUNT = #count{NAME : person(NAME,_), personIsStudent(NAME,_)}.

% add universityMinus to set, universityMinus is the sum of salaries payed by the university minus studentFees
universityMinus(TOTAL) :- TOTAL = SALARY_SUM - FEE, studentFees(FEE), SALARY_SUM = #sum{SALARY,NAME : personAtUniversity(NAME,SALARY)}.

% calculate the number of groups a person is related to
personGroupCount(NAME, GROUPS_COUNT) :- person(NAME,SALARY), GROUPS_COUNT = #count{GROUP : personInGroup(NAME,GROUP)}.

% calculate the salary of each person per group, make sure that groups greater than zero, otherwise division by zero
personGroupSalary(NAME,GROUP,SALARY_PER_GROUP) :- personInGroup(NAME,GROUP), person(NAME,SALARY), personGroupCount(NAME,GROUPS_COUNT), GROUPS_COUNT > 0, SALARY_PER_GROUP = SALARY/GROUPS_COUNT.

% sum up all costs per group
groupMinus(GROUP,GROUP_MINUS) :- personGroupSalary(_,GROUP,_), GROUP_MINUS = #sum{SALARY,NAME : personGroupSalary(NAME,GROUP,SALARY)}.