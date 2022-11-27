#show maps/2.

% Model: 4
% Answer Set 1: maps(a,f) maps(b,g) maps(c,h) maps(d,e)
% Answer Set 2: maps(a,e) maps(b,f) maps(c,g) maps(d,h)
% Answer Set 3: maps(a,g) maps(b,h) maps(c,e) maps(d,f)
% Answer Set 4: maps(a,h) maps(b,e) maps(c,f) maps(d,g)
% mnr: 4
% incs: maps(a,f) maps(b,g) maps(c,h) maps(d,e)
% incs: maps(a,e) maps(b,f) maps(c,g) maps(d,h)
% incs: maps(a,g) maps(b,h) maps(c,e) maps(d,f)
% incs: maps(a,h) maps(b,e) maps(c,f) maps(d,g)

numNodes1(4). numNodes2(2).

edge1(a, b).
edge1(b, c).
edge1(c, d).

edge2(e, f).
edge2(f, g).
edge2(g, h).
edge2(h, e).

preserve(a,d).