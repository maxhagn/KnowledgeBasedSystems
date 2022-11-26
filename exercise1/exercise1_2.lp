#show maps/2.
% Model: 2

% mnr: 2
% incs: maps(a,x)
% incs: maps(b,y)
% incs: maps(a,y)
% incs: maps(b,x)

numNodes1(2). numNodes2(2).

edge1(a, b).

edge2(x, y).
edge2(y, x).

preserve(a, b).