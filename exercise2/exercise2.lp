% define the chess board
tile(1..X, 1..Y) :- size(X), size(Y).

% guess random bishop positions
{bishopPos(X,Y)} :- tile(X,Y).

% every neightbor tile is attacked
wasAttackedBy(X+1,Y+1,X,Y) :- bishopPos(X,Y), size(S), tile(X+1,Y+1).
wasAttackedBy(X-1,Y-1,X,Y) :- bishopPos(X,Y), size(S), tile(X-1,Y-1).
wasAttackedBy(X-1,Y+1,X,Y) :- bishopPos(X,Y), size(S), tile(X-1,Y+1).
wasAttackedBy(X+1,Y-1,X,Y) :- bishopPos(X,Y), size(S), tile(X+1,Y-1).

% attack further tiles if no bishop is in between
wasAttackedBy(X+I1+1,Y+I1+1,X,Y) :- bishopPos(X,Y), not bishopPos(X+I1,Y+I1), size(S), I1 = 1..S, tile(X+I1+1,Y+I1+1).
wasAttackedBy(X-I1-1,Y-I1-1,X,Y) :- bishopPos(X,Y), not bishopPos(X-I1,Y-I1), size(S), I1 = 1..S, tile(X-I1-1,Y-I1-1).
wasAttackedBy(X-I1-1,Y+I1+1,X,Y) :- bishopPos(X,Y), not bishopPos(X-I1,Y+I1), size(S), I1 = 1..S, tile(X-I1-1,Y+I1+1).
wasAttackedBy(X+I1+1,Y-I1-1,X,Y) :- bishopPos(X,Y), not bishopPos(X+I1,Y-I1), size(S), I1 = 1..S, tile(X+I1+1,Y-I1-1).

% kill combination if bishopCnt not holds
:- bishopCnt(C1), C2 = #count{X,Y : bishopPos(X,Y)}, C1 != C2.

% kill combination if attackCnt not holds
:- attackCnt(X,Y,AC), #count{A,B : wasAttackedBy(X,Y,A,B)} = COUNT, COUNT < AC.