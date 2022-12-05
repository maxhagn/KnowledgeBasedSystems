#show maps/2.

% Models: 2
% Answer Set 1: maps(a,z) maps(b,x) maps(c,y)
% Answer Set 2: maps(a,y) maps(b,z) maps(c,x)

numNodes1(3). numNodes2(3).

edge1(a, b).
edge1(b, c).
edge1(c, a).

edge2(x, y).
edge2(y, z).
edge2(z, x).
edge2(x, x).

preserve(a, a).