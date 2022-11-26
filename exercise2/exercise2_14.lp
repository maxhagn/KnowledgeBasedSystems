#show bishopPos/2.
%Models: 8

% mnr: 8
% incs: bishopPos(2,2)
% incs: bishopPos(3,2)
% incs: bishopPos(3,3)
% incs: bishopPos(4,3)
% incs: bishopPos(3,4)
% incs: bishopPos(4,4)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(5).
bishopCnt(6).
attackCnt(X, Y, 1) :- tile(X, Y).