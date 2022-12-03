% define the chess board
tile(1..X,1..Y) :- size(X), size(Y).

% guess random bishop positions
{bishopPos(X,Y)} :- tile(X,Y).

% if diagonal neighbor tile exists it is attacked
tileAttackedBy(X+1,Y+1,X,Y) :- bishopPos(X,Y), tile(X+1,Y+1).
tileAttackedBy(X-1,Y-1,X,Y) :- bishopPos(X,Y), tile(X-1,Y-1).
tileAttackedBy(X-1,Y+1,X,Y) :- bishopPos(X,Y), tile(X-1,Y+1).
tileAttackedBy(X+1,Y-1,X,Y) :- bishopPos(X,Y), tile(X+1,Y-1).

% attack further tiles if no bishop is in between
tileAttackedBy(X+DISTANCE+1,Y+DISTANCE+1,X,Y) :- bishopPos(X,Y), not bishopPos(X+DISTANCE,Y+DISTANCE), size(S), DISTANCE = 1..S, tile(X+DISTANCE+1,Y+DISTANCE+1).
tileAttackedBy(X-DISTANCE-1,Y-DISTANCE-1,X,Y) :- bishopPos(X,Y), not bishopPos(X-DISTANCE,Y-DISTANCE), size(S), DISTANCE = 1..S, tile(X-DISTANCE-1,Y-DISTANCE-1).
tileAttackedBy(X-DISTANCE-1,Y+DISTANCE+1,X,Y) :- bishopPos(X,Y), not bishopPos(X-DISTANCE,Y+DISTANCE), size(S), DISTANCE = 1..S, tile(X-DISTANCE-1,Y+DISTANCE+1).
tileAttackedBy(X+DISTANCE+1,Y-DISTANCE-1,X,Y) :- bishopPos(X,Y), not bishopPos(X+DISTANCE,Y-DISTANCE), size(S), DISTANCE = 1..S, tile(X+DISTANCE+1,Y-DISTANCE-1).

% remove set if bishopCnt not holds
:- bishopCnt(EXPECTED_COUNT), ACTUAL_COUNT = #count{X,Y : bishopPos(X,Y)}, EXPECTED_COUNT != ACTUAL_COUNT.

% remove set if attackCnt not holds
:- attackCnt(X,Y,EXPECTED_COUNT), ACTUAL_COUNT = #count{A,B : tileAttackedBy(X,Y,A,B)}, ACTUAL_COUNT < EXPECTED_COUNT.