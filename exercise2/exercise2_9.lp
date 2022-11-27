#show bishopPos/2.

% Models: 0
% mnr: 0

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(5).
bishopCnt(25).
attackCnt(3, 1, 3).