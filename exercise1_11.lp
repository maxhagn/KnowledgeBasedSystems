#show maps/2.

% Models: 3
% Answer Set 1: maps(a,x) maps(b,y)
% Answer Set 2: maps(a,x) maps(b,z)
% Answer Set 3: maps(a,x) maps(b,x)

numNodes1(2). numNodes2(3).

edge1(a, a).
edge1(a, b).

edge2(x, x).
edge2(x, y).
edge2(x, z).

preserve(a,b).