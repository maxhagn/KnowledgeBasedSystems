#show groupMinus/2.
#show universityMinus/1.

% Model: 1
% Answer Set 1: universityMinus(1100) groupMinus(g1,1100) groupMinus(g2,200)

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