#show bishopPos/2.
%Models: 6

% mnr: 6
% incs: bishopPos(1,1)
% incs: bishopPos(1,3)
% incs: bishopPos(3,1)
% incs: bishopPos(3,3)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3).
bishopCnt(2).
attackCnt(2, 2, 2) :- tile(X, Y).