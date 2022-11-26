#show bishopPos/2.
%Models: 0

% mnr: 0

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3). 
bishopCnt(4).
attackCnt(X, Y, 2) :- tile(X, Y).