% extract vertex from edges
vertex1(X) :- edge1(X,_).
vertex1(Y) :- edge1(_,Y).
vertex2(X) :- edge2(X,_).
vertex2(Y) :- edge2(_,Y).

% add exactly one mapping from graph G to graph H
{maps(X,Y) : vertex2(Y)} = 1 :- vertex1(X).

% check if every node in graph G maps to node in graph H
:- maps(X,Y), numNodes1(V), #count{C : maps(C,_)} = COUNT, V != COUNT.

% kill all set if they do not fulfill the homomorphism condition
:- maps(A,B), maps(X,Y), edge1(A,X), not edge2(B,Y).

% mark the starting point of preserve in graph H
reached1(X,0) :- preserve(X,_).

% calculate distance for all nodes in graph G
reached1(Y,K) :- reached1(X,Z), edge1(X,Y), numNodes1(C), K = Z + 1, Z <= C.

% extract minimum distance to end of preserve in graph G
pathToPres1(X,MIN) :- preserve(_,X), #min{C : reached1(X,C)} = MIN.

% create mapped graph
pathAfterMap(A,B) :- vertex2(X), edge2(X,Y), maps(A,X), maps(B,Y).

% mark the starting point of preserve in graph H
reached2(X,0) :- preserve(X,_).

% calculate distance for all nodes in graph H
reached2(Y,K) :- reached2(X,Z), pathAfterMap(X,Y), numNodes2(C), K = Z + 1, Z <= C.

% extract minimum distance to end of preserve in graph H
pathToPres2(X,MIN) :- preserve(_,X), #min{C : reached2(X,C)} = MIN.

% kill sets if distance is not preserved
:- maps(_,_), preserve(_,E), pathToPres1(E,G), pathToPres2(E,H), G != H.