#show bishopPos/2.

% Models: 1
% Answer Set 1: bishopPos(1,1) bishopPos(2,1) bishopPos(1,2) bishopPos(2,2)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(2).
bishopCnt(4).
attackCnt(X, Y, 1) :- tile(X, Y).