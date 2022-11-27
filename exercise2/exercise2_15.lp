#show bishopPos/2.

% Models: 16
% Answer Set 1: bishopPos(1,1) bishopPos(5,1) bishopPos(1,5) bishopPos(5,5)
% Answer Set 2: bishopPos(5,1) bishopPos(2,2) bishopPos(1,5) bishopPos(5,5)
% Answer Set 3: bishopPos(2,2) bishopPos(4,2) bishopPos(1,5) bishopPos(5,5)
% Answer Set 4: bishopPos(1,1) bishopPos(4,2) bishopPos(1,5) bishopPos(5,5)
% Answer Set 5: bishopPos(2,2) bishopPos(4,2) bishopPos(2,4) bishopPos(5,5)
% Answer Set 6: bishopPos(1,1) bishopPos(4,2) bishopPos(2,4) bishopPos(5,5)
% Answer Set 7: bishopPos(5,1) bishopPos(2,2) bishopPos(2,4) bishopPos(5,5)
% Answer Set 8: bishopPos(1,1) bishopPos(5,1) bishopPos(2,4) bishopPos(5,5)
% Answer Set 9: bishopPos(2,2) bishopPos(4,2) bishopPos(2,4) bishopPos(4,4)
% Answer Set 10: bishopPos(1,1) bishopPos(4,2) bishopPos(2,4) bishopPos(4,4)
% Answer Set 11: bishopPos(5,1) bishopPos(2,2) bishopPos(2,4) bishopPos(4,4)
% Answer Set 12: bishopPos(1,1) bishopPos(5,1) bishopPos(2,4) bishopPos(4,4)
% Answer Set 13: bishopPos(2,2) bishopPos(4,2) bishopPos(4,4) bishopPos(1,5)
% Answer Set 14: bishopPos(1,1) bishopPos(4,2) bishopPos(4,4) bishopPos(1,5)
% Answer Set 15: bishopPos(5,1) bishopPos(2,2) bishopPos(4,4) bishopPos(1,5)
% Answer Set 16: bishopPos(1,1) bishopPos(5,1) bishopPos(4,4) bishopPos(1,5)
% mnr: 16
% incs: bishopPos(1,1) bishopPos(5,1) bishopPos(1,5) bishopPos(5,5)
% incs: bishopPos(5,1) bishopPos(2,2) bishopPos(1,5) bishopPos(5,5)
% incs: bishopPos(2,2) bishopPos(4,2) bishopPos(1,5) bishopPos(5,5)
% incs: bishopPos(1,1) bishopPos(4,2) bishopPos(1,5) bishopPos(5,5)
% incs: bishopPos(2,2) bishopPos(4,2) bishopPos(2,4) bishopPos(5,5)
% incs: bishopPos(1,1) bishopPos(4,2) bishopPos(2,4) bishopPos(5,5)
% incs: bishopPos(5,1) bishopPos(2,2) bishopPos(2,4) bishopPos(5,5)
% incs: bishopPos(1,1) bishopPos(5,1) bishopPos(2,4) bishopPos(5,5)
% incs: bishopPos(2,2) bishopPos(4,2) bishopPos(2,4) bishopPos(4,4)
% incs: bishopPos(1,1) bishopPos(4,2) bishopPos(2,4) bishopPos(4,4)
% incs: bishopPos(5,1) bishopPos(2,2) bishopPos(2,4) bishopPos(4,4)
% incs: bishopPos(1,1) bishopPos(5,1) bishopPos(2,4) bishopPos(4,4)
% incs: bishopPos(2,2) bishopPos(4,2) bishopPos(4,4) bishopPos(1,5)
% incs: bishopPos(1,1) bishopPos(4,2) bishopPos(4,4) bishopPos(1,5)
% incs: bishopPos(5,1) bishopPos(2,2) bishopPos(4,4) bishopPos(1,5)
% incs: bishopPos(1,1) bishopPos(5,1) bishopPos(4,4) bishopPos(1,5)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(5).
bishopCnt(4).
attackCnt(3, 3, 4).