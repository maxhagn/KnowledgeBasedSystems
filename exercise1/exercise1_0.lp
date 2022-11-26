#show maps/2.
% Model: 1

% mnr: 1
% incs: maps(a,e)
% incs: maps(b,f)
% incs: maps(c,f)
% incs: maps(d,g)

numNodes1(4). numNodes2(3).

edge1(a, b).
edge1(a, c).
edge1(b, d).
edge1(c, d).

edge2(e, f).
edge2(f, g).
edge2(e, e).

preserve(a, d).