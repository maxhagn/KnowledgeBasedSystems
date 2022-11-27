#show groupMinus/2.
#show universityMinus/1.

% Model: 1
% Answer Set 1: universityMinus(200) groupMinus(g1,200) groupMinus(g2,200)
% mnr: 1
% incs: universityMinus(200) groupMinus(g1,200) groupMinus(g2,200)

person(a, 100).
person(b, 100).
person(c, 100).
person(d, 100).
person(e, 100).
person(f, 100).

assigned(c, g1).
assigned(a, g2).

worksFor(b, a).
worksFor(b, c).
worksFor(d, b).
worksFor(f, e).