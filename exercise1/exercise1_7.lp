#show maps/2.

% Model: 3
% Answer Set 1: maps(a,e) maps(b,e) maps(c,e) maps(d,f)
% Answer Set 2: maps(a,e) maps(b,e) maps(c,e) maps(d,e)
% Answer Set 3: maps(a,e) maps(b,f) maps(c,f) maps(d,g)
% mnr: 3
% incs: maps(a,e) maps(b,e) maps(c,e) maps(d,f)
% incs: maps(a,e) maps(b,e) maps(c,e) maps(d,e)
% incs: maps(a,e) maps(b,f) maps(c,f) maps(d,g)

numNodes1(4). numNodes2(3).

edge1(a, b).
edge1(a, c).
edge1(b, d).
edge1(c, d).

edge2(e, f).
edge2(f, g).
edge2(e, e).

preserve(b, c).