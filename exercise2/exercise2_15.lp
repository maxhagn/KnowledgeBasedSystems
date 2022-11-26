#show bishopPos/2.
%Models: 16

% mnr: 16
% incs: bishopPos(1,1)
% incs: bishopPos(5,1)
% incs: bishopPos(1,5)
% incs: bishopPos(5,5)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(5).
bishopCnt(4).
attackCnt(3, 3, 4).