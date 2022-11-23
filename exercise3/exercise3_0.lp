#show groupMinus/2.
#show universityMinus/1.
% Model: universityExpenses(1300). groupExpenses(g1,1200). groupExpenses(g2,300).

% mnr: 1
% incs: groupMinus(g1,1100)
% incs: groupMinus(g2,200)
% incs: universityMinus(1100)

person(a, 100).
person(b, 150).
person(c, 1000).
person(d, 50).

assigned(c, g1).
assigned(a, g2).
worksFor(b, a).
worksFor(b, c).
worksFor(d, b).

person(e, 266).
person(f, 133).
worksFor(f, e).