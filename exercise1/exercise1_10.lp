#show maps/2.
% Model: 21

% mnr: 21
% incs: maps(a,x)
% incs: maps(b,y)
% incs: maps(c,z)

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


preserve(a,b).