#show maps/2.
% Model: 3

% mnr: 3
% incs: maps(a,e)
% incs: maps(b,e)
% incs: maps(c,e)
% incs: maps(d,f)
% incs: maps(a,e)
% incs: maps(b,f)
% incs: maps(c,f)
% incs: maps(d,g)
% incs: maps(a,e)
% incs: maps(b,e)
% incs: maps(c,e)
% incs: maps(d,e)

numNodes1(4). numNodes2(3).

edge1(a, b).
edge1(a, c).
edge1(b, d).
edge1(c, d).

edge2(e, f).
edge2(f, g).
edge2(e, e).

preserve(b, c).