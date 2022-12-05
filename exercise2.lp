% define the chess board
tile(1..X,1..Y) :- size(X), size(Y).

% guess random bishop positions
{bishopPos(X,Y)} :- tile(X,Y).

% if diagonal neighbor tile exists it is attacked, every tile is attacked only once from one direction
tileAttackedDirection(X+DISTANCE,Y+DISTANCE,1) :- DISTANCE = 1..SIZE, size(SIZE), bishopPos(X,Y), tile(X+DISTANCE,Y+DISTANCE).
tileAttackedDirection(X-DISTANCE,Y+DISTANCE,2) :- DISTANCE = 1..SIZE, size(SIZE), bishopPos(X,Y), tile(X-DISTANCE,Y+DISTANCE).
tileAttackedDirection(X-DISTANCE,Y-DISTANCE,3) :- DISTANCE = 1..SIZE, size(SIZE), bishopPos(X,Y), tile(X-DISTANCE,Y-DISTANCE).
tileAttackedDirection(X+DISTANCE,Y-DISTANCE,4) :- DISTANCE = 1..SIZE, size(SIZE), bishopPos(X,Y), tile(X+DISTANCE,Y-DISTANCE).

% remove set if bishopCnt not holds
:- bishopCnt(EXPECTED_COUNT), ACTUAL_COUNT = #count{X,Y : bishopPos(X,Y)}, EXPECTED_COUNT != ACTUAL_COUNT.

% remove set if attackCnt not holds
:- attackCnt(X,Y,EXPECTED_COUNT), ACTUAL_COUNT = #count{DIRECTION : tileAttackedDirection(X,Y,DIRECTION)}, ACTUAL_COUNT < EXPECTED_COUNT.