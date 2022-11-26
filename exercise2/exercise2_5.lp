#show bishopPos/2.
%Models: 1

% mnr: 1
% incs: bishopPos(2,2)
% incs: bishopPos(3,2)
% incs: bishopPos(2,3)
% incs: bishopPos(3,3)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(4).
bishopCnt(4).
attackCnt(X, Y, 1) :- tile(X, Y).