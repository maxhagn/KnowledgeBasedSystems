#show bishopPos/2.
%Models: 16

% mnr: 16
% incs: bishopPos(1,1)
% incs: bishopPos(2,1)
% incs: bishopPos(1,2)
% incs: bishopPos(2,2)

safety_net(1..10).
attackCnt(X, Y, 0) :- tile(X, Y), not attackCnt(X, Y, N), safety_net(N).

size(3). 
bishopCnt(4).
attackCnt(X, Y, 1) :- tile(X, Y).