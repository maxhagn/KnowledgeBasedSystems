#show groupMinus/2.
#show universityMinus/1.
% Model: empty.

% mnr: 1
% incs: groupMinus(g1,200)
% incs: groupMinus(g2,200)
% incs: universityMinus(200)

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