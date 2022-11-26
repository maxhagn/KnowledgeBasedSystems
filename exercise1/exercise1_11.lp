#show maps/2.
% Model: 3

% mnr: 3
% incs: maps(a,x)
% incs: maps(b,x)
% incs: maps(b,y)
% incs: maps(b,z)

numNodes1(2). numNodes2(3).

edge1(a, a).
edge1(a, b).

edge2(x, x).
edge2(x, y).
edge2(x, z).

preserve(a,b).