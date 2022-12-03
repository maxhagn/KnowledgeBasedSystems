#show bishopPos/2.

% Models: 0

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(2).
bishopCnt(3).
attackCnt(X, Y, 1) :- tile(X, Y).