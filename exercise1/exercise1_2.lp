#show maps/2.

% Model: 2
% Answer Set 1: maps(a,y) maps(b,x)
% Answer Set 2: maps(a,x) maps(b,y)
% mnr: 2
% incs: maps(a,x) maps(b,y)
% incs: maps(a,y) maps(b,x)

numNodes1(2). numNodes2(2).

edge1(a, b).

edge2(x, y).
edge2(y, x).

preserve(a, b).