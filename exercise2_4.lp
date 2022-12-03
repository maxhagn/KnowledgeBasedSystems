#show bishopPos/2.

% Models: 1
% Answer Set 1: bishopPos(1,1) bishopPos(3,1) bishopPos(1,3) bishopPos(3,3)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3). 
bishopCnt(4).
attackCnt(2, 2, 4) :- tile(X, Y).