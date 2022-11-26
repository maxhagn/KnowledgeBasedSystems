#show bishopPos/2.
%Models: 1

% mnr: 1
% incs: bishopPos(2,2)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(2).
bishopCnt(1).
attackCnt(1, 1, 1).