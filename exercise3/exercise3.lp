% add all worksFor relations to set
worksFor(X,Z) :- worksFor(X,Y), worksFor(Y,Z).

% person is in a group, if explicitly assigned or if worksFor a person who is explicitly assigned
personInGroup(I,G) :- assigned(I,G).
personInGroup(I,G) :- assigned(X,G), worksFor(I,X).

% person is working for university if related to group
personAtUniversity(I,S) :- person(I,S), personInGroup(I,G).

% person is student if not related to group
personIsStudent(I,S) :- person(I,S), not personAtUniversity(I,S).

% student count is multiplied with 100 to get total university fees
studentFees(FEE) :-  FEE = STUDENT_COUNT * 100, STUDENT_COUNT = #count{I : person(I,_), personIsStudent(I,_)}.

% total university minus is the sum of salaries payed by the university minus student fees
universityMinus(TOTAL) :- TOTAL = SALARY_SUM - FEE, studentFees(FEE), SALARY_SUM = #sum{S,I : personAtUniversity(I,S)}.

% calculate the count of groups a person belongs to
personIsInGroups(I, GROUPS) :- person(I,S), #count{G : personInGroup(I,G)} = GROUPS.

% calculate the salary of each person per group, make sure that groups greater than zero, otherwise devision by zero could happen
groupPerson(I,G,SALARY) :- personInGroup(I,G), person(I,S), personIsInGroups(I,GROUPS), GROUPS > 0, SALARY = S/GROUPS.

% sum up all costs per group
groupMinus(GROUP,GROUP_MINUS) :- groupPerson(_,GROUP,_), GROUP_MINUS = #sum{S,I : groupPerson(I,GROUP,S)}.