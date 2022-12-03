#show bishopPos/2.

% Models: 6
% Answer Set 1: bishopPos(1,1) bishopPos(3,1)
% Answer Set 2: bishopPos(3,1) bishopPos(1,3)
% Answer Set 3: bishopPos(1,1) bishopPos(1,3)
% Answer Set 4: bishopPos(1,3) bishopPos(3,3)
% Answer Set 5: bishopPos(3,1) bishopPos(3,3)
% Answer Set 6: bishopPos(1,1) bishopPos(3,3)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3).
bishopCnt(2).
attackCnt(2, 2, 2) :- tile(X, Y).