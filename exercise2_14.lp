#show bishopPos/2.

% Models: 8
% Answer Set 1: bishopPos(2,2) bishopPos(3,2) bishopPos(3,3) bishopPos(4,3) bishopPos(3,4) bishopPos(4,4)
% Answer Set 2: bishopPos(3,2) bishopPos(4,2) bishopPos(3,3) bishopPos(4,3) bishopPos(2,4) bishopPos(3,4)
% Answer Set 3: bishopPos(3,2) bishopPos(4,2) bishopPos(2,3) bishopPos(3,3) bishopPos(4,3) bishopPos(2,4)
% Answer Set 4: bishopPos(2,2) bishopPos(3,2) bishopPos(2,3) bishopPos(3,3) bishopPos(4,3) bishopPos(4,4)
% Answer Set 5: bishopPos(2,2) bishopPos(2,3) bishopPos(3,3) bishopPos(4,3) bishopPos(3,4) bishopPos(4,4)
% Answer Set 6: bishopPos(2,2) bishopPos(3,2) bishopPos(2,3) bishopPos(3,3) bishopPos(3,4) bishopPos(4,4)
% Answer Set 7: bishopPos(3,2) bishopPos(4,2) bishopPos(2,3) bishopPos(3,3) bishopPos(2,4) bishopPos(3,4)
% Answer Set 8: bishopPos(4,2) bishopPos(2,3) bishopPos(3,3) bishopPos(4,3) bishopPos(2,4) bishopPos(3,4)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(5).
bishopCnt(6).
attackCnt(X, Y, 1) :- tile(X, Y).