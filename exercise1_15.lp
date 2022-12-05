#show maps/2.

% Models: 2
% Answer Set 1: maps(a,x) maps(b,y) maps(c,x) maps(d,y) maps(e,x) maps(f,y)
% Answer Set 2: maps(a,y) maps(b,x) maps(c,y) maps(d,x) maps(e,y) maps(f,x)

numNodes1(6). numNodes2(2).

edge1(a, b).
edge1(b, c).
edge1(c, d).
edge1(d, e).
edge1(e, f).

edge2(x, y).
edge2(y, x).

preserve(a, c).