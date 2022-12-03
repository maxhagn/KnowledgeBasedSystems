#show maps/2.

% Model: 1
% Answer Set 1: maps(a,x) maps(b,y) maps(c,y) maps(d,z)

numNodes1(4). numNodes2(3).

edge1(a, b).
edge1(b, c).
edge1(c, d).
edge1(d, a).
edge1(b, d).
edge1(d, b).
edge1(a, c).
edge1(c, a).

edge2(x, y).
edge2(y, y).
edge2(y, z).
edge2(y, x).
edge2(z, x).
edge2(z, y).

preserve(a, d).