#show maps/2.

% Model: 1
% Answer Set 1: maps(a,x) maps(b,x) maps(c,x)
% mnr: 1
% incs: maps(a,x) maps(b,x) maps(c,x)

numNodes1(3). numNodes2(2).

edge1(a, b).
edge1(b, c).
edge1(c, a).

edge2(x, x).
edge2(x, y).

preserve(a, b).