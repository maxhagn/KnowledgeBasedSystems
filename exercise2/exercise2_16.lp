#show bishopPos/2.

% Models: 4
% Answer Set 1: bishopPos(1,1) bishopPos(4,1)
% Answer Set 2: bishopPos(1,1) bishopPos(1,4)
% Answer Set 3: bishopPos(4,1) bishopPos(4,4)
% Answer Set 4: bishopPos(1,4) bishopPos(4,4)
% mnr: 4
% incs: bishopPos(1,1) bishopPos(4,1)
% incs: bishopPos(1,1) bishopPos(1,4)
% incs: bishopPos(4,1) bishopPos(4,4)
% incs: bishopPos(1,4) bishopPos(4,4)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(4).
bishopCnt(2).
attackCnt(2, 2, 1).
attackCnt(2, 3, 1).
attackCnt(3, 2, 1).
attackCnt(3, 3, 1).