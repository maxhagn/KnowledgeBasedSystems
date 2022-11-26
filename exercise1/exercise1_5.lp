#show maps/2.
% Model: 4

% mnr: 4
% incs: maps(a,e)
% incs: maps(a,f)
% incs: maps(a,g)
% incs: maps(a,h)
% incs: maps(b,e)
% incs: maps(b,f)
% incs: maps(b,g)
% incs: maps(b,h)
% incs: maps(c,e)
% incs: maps(c,f)
% incs: maps(c,g)
% incs: maps(c,h)
% incs: maps(d,e)
% incs: maps(d,f)
% incs: maps(d,g)
% incs: maps(d,h)

numNodes1(4). numNodes2(2).

edge1(a, b).
edge1(b, c).
edge1(c, d).

edge2(e, f).
edge2(f, g).
edge2(g, h).
edge2(h, e).

preserve(a,d).