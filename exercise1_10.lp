#show maps/2.

% Models: 21
% Answer Set 1: maps(a,y) maps(b,y) maps(c,z)
% Answer Set 2: maps(a,y) maps(b,y) maps(c,x)
% Answer Set 3: maps(a,y) maps(b,y) maps(c,y)
% Answer Set 4: maps(a,z) maps(b,y) maps(c,z)
% Answer Set 5: maps(a,z) maps(b,y) maps(c,y)
% Answer Set 6: maps(a,z) maps(b,y) maps(c,x)
% Answer Set 7: maps(a,x) maps(b,y) maps(c,z)
% Answer Set 8: maps(a,x) maps(b,y) maps(c,x)
% Answer Set 9: maps(a,x) maps(b,y) maps(c,y)
% Answer Set 10: maps(a,x) maps(b,x) maps(c,y)
% Answer Set 11: maps(a,x) maps(b,x) maps(c,x)
% Answer Set 12: maps(a,y) maps(b,z) maps(c,z)
% Answer Set 13: maps(a,y) maps(b,z) maps(c,y)
% Answer Set 14: maps(a,y) maps(b,z) maps(c,x)
% Answer Set 15: maps(a,y) maps(b,x) maps(c,x)
% Answer Set 16: maps(a,y) maps(b,x) maps(c,y)
% Answer Set 17: maps(a,z) maps(b,z) maps(c,z)
% Answer Set 18: maps(a,z) maps(b,z) maps(c,x)
% Answer Set 19: maps(a,z) maps(b,z) maps(c,y)
% Answer Set 20: maps(a,z) maps(b,x) maps(c,x)
% Answer Set 21: maps(a,z) maps(b,x) maps(c,y)

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