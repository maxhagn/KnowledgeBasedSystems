#show bishopPos/2.

% Models: 16
% Answer Set 1: bishopPos(1,1) bishopPos(2,1) bishopPos(1,2) bishopPos(2,2)
% Answer Set 2: bishopPos(1,1) bishopPos(2,1) bishopPos(2,2) bishopPos(3,2)
% Answer Set 3: bishopPos(2,1) bishopPos(3,1) bishopPos(1,2) bishopPos(2,2)
% Answer Set 4: bishopPos(2,1) bishopPos(3,1) bishopPos(2,2) bishopPos(3,2)
% Answer Set 5: bishopPos(2,1) bishopPos(1,2) bishopPos(2,2) bishopPos(1,3)
% Answer Set 6: bishopPos(2,1) bishopPos(2,2) bishopPos(3,2) bishopPos(1,3)
% Answer Set 7: bishopPos(2,1) bishopPos(1,2) bishopPos(2,2) bishopPos(3,3)
% Answer Set 8: bishopPos(2,1) bishopPos(2,2) bishopPos(3,2) bishopPos(3,3)
% Answer Set 9: bishopPos(1,1) bishopPos(1,2) bishopPos(2,2) bishopPos(2,3)
% Answer Set 10: bishopPos(1,1) bishopPos(2,2) bishopPos(3,2) bishopPos(2,3)
% Answer Set 11: bishopPos(3,1) bishopPos(1,2) bishopPos(2,2) bishopPos(2,3)
% Answer Set 12: bishopPos(3,1) bishopPos(2,2) bishopPos(3,2) bishopPos(2,3)
% Answer Set 13: bishopPos(1,2) bishopPos(2,2) bishopPos(1,3) bishopPos(2,3)
% Answer Set 14: bishopPos(2,2) bishopPos(3,2) bishopPos(1,3) bishopPos(2,3)
% Answer Set 15: bishopPos(1,2) bishopPos(2,2) bishopPos(2,3) bishopPos(3,3)
% Answer Set 16: bishopPos(2,2) bishopPos(3,2) bishopPos(2,3) bishopPos(3,3)
% mnr: 16
% incs: bishopPos(1,1) bishopPos(2,1) bishopPos(1,2) bishopPos(2,2)
% incs: bishopPos(1,1) bishopPos(2,1) bishopPos(2,2) bishopPos(3,2)
% incs: bishopPos(2,1) bishopPos(3,1) bishopPos(1,2) bishopPos(2,2)
% incs: bishopPos(2,1) bishopPos(3,1) bishopPos(2,2) bishopPos(3,2)
% incs: bishopPos(2,1) bishopPos(1,2) bishopPos(2,2) bishopPos(1,3)
% incs: bishopPos(2,1) bishopPos(2,2) bishopPos(3,2) bishopPos(1,3)
% incs: bishopPos(2,1) bishopPos(1,2) bishopPos(2,2) bishopPos(3,3)
% incs: bishopPos(2,1) bishopPos(2,2) bishopPos(3,2) bishopPos(3,3)
% incs: bishopPos(1,1) bishopPos(1,2) bishopPos(2,2) bishopPos(2,3)
% incs: bishopPos(1,1) bishopPos(2,2) bishopPos(3,2) bishopPos(2,3)
% incs: bishopPos(3,1) bishopPos(1,2) bishopPos(2,2) bishopPos(2,3)
% incs: bishopPos(3,1) bishopPos(2,2) bishopPos(3,2) bishopPos(2,3)
% incs: bishopPos(1,2) bishopPos(2,2) bishopPos(1,3) bishopPos(2,3)
% incs: bishopPos(2,2) bishopPos(3,2) bishopPos(1,3) bishopPos(2,3)
% incs: bishopPos(1,2) bishopPos(2,2) bishopPos(2,3) bishopPos(3,3)
% incs: bishopPos(2,2) bishopPos(3,2) bishopPos(2,3) bishopPos(3,3)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3). 
bishopCnt(4).
attackCnt(X, Y, 1) :- tile(X, Y).