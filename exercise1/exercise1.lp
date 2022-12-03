% extract vertex from edges
vertex1(X) :- edge1(X,_).
vertex1(Y) :- edge1(_,Y).
vertex2(X) :- edge2(X,_).
vertex2(Y) :- edge2(_,Y).

% add exactly one mapping from graph G to graph H
{maps(X,Y) : vertex2(Y)} = 1 :- vertex1(X).

% check if every node in graph G maps to node in graph H
:- maps(X,Y), numNodes1(EXPECTED_COUNT), ACTUAL_COUNT = #count{C : maps(C,_)}, EXPECTED_COUNT != ACTUAL_COUNT.

% remove set if maps do not fulfill the homomorphism condition
:- maps(A,B), maps(X,Y), edge1(A,X), not edge2(B,Y).

% mark node if it is reachable from preserve starting point
reached1(Y,1) :- preserve(X,_), edge1(X,Y).

% calculate distance for all nodes in graph G
reached1(Y,DISTANCE) :- reached1(X,PREVIOUS_DISTANCE), edge1(X,Y), numNodes1(MAX_DISTANCE), DISTANCE = PREVIOUS_DISTANCE + 1, DISTANCE <= MAX_DISTANCE.

% extract minimum distance to end of preserve in graph G
minPreserveDistG(X,MIN_DISTANCE) :- reached1(X,_), preserve(_,X), MIN_DISTANCE = #min{C : reached1(X,C)}.

% create edges for homomorphism graph
mappedEdge(A,B) :- vertex2(X), maps(A,X), maps(B,Y), edge2(X,Y).

% mark node if it is reachable from preserve starting point
reached2(Y,1) :- preserve(X,_), mappedEdge(X,Y).

% calculate distance for all nodes in mapped graph
reached2(Y,DISTANCE) :- reached2(X,PREVIOUS_DISTANCE), mappedEdge(X,Y), numNodes1(MAX_DISTANCE), DISTANCE = PREVIOUS_DISTANCE + 1, DISTANCE <= MAX_DISTANCE.

% extract minimum distance to end of preserve in graph H
minPreserveDistH(X,MIN_DISTANCE) :- preserve(_,X), MIN_DISTANCE = #min{C : reached2(X,C)}.

% remove set if distance is not preserved
:- preserve(_,PRESERVE_END), minPreserveDistG(PRESERVE_END,DISTANCE_G), minPreserveDistH(PRESERVE_END,DISTANCE_H), DISTANCE_G != DISTANCE_H.