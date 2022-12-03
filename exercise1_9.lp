#show maps/2.

% Model: 1
% Answer Set 1: maps(a,x) maps(b,y) maps(c,z)

numNodes1(3). numNodes2(3).

edge1(a, b).
edge1(b, c).

edge2(x, x).
edge2(x, y).
edge2(y, x).
edge2(y, y).
edge2(y, z).
edge2(z, x).
edge2(z, y).
edge2(z, z).

preserve(a,c).