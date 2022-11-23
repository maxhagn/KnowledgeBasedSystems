% define the chess board
tile(1..X, 1..Y) :- size(X), size(Y).

% guess random bishop positions
{bishopPos(X,Y)} :- tile(X,Y).

% generate tile combinations that might be attacked based on the bishop position
{wasAttackedBy(X+I,Y+I,X,Y)} :- bishopPos(X,Y), size(S), I = 1..S, tile(X+I,Y+I).
{wasAttackedBy(X-I,Y-I,X,Y)} :- bishopPos(X,Y), size(S), I = 1..S, tile(X-I,Y-I).
{wasAttackedBy(X-I,Y+I,X,Y)} :- bishopPos(X,Y), size(S), I = 1..S, tile(X-I,Y+I).
{wasAttackedBy(X+I,Y-I,X,Y)} :- bishopPos(X,Y), size(S), I = 1..S, tile(X+I,Y-I).

% kill combination if bishopCnt not holds
:- bishopCnt(C1), C2 = #count{X,Y : bishopPos(X,Y)}, C1 != C2.

% kill combination if attackCnt not holds
:- attackCnt(X,Y,AC), #count{A,B : wasAttackedBy(X,Y,A,B)} = COUNT, COUNT < AC.

% kill all blocked combinations
:- size(S), I1 = 1..S, I2 = 1..S, bishopPos(A,B), bishopPos(A+I1,B+I1), tile(A+I1+I2,B+I1+I2), wasAttackedBy(A+I1+I2,B+I1+I2,A,B).
:- size(S), I1 = 1..S, I2 = 1..S, bishopPos(A,B), bishopPos(A-I1,B-I1), tile(A-I1-I2,B-I1-I2), wasAttackedBy(A-I1-I2,B-I1-I2,A,B).
:- size(S), I1 = 1..S, I2 = 1..S, bishopPos(A,B), bishopPos(A-I1,B+I1), tile(A-I1-I2,B+I1+I2), wasAttackedBy(A-I1-I2,B+I1+I2,A,B).
:- size(S), I1 = 1..S, I2 = 1..S, bishopPos(A,B), bishopPos(A+I1,B-I1), tile(A+I1+I2,B-I1-I2), wasAttackedBy(A+I1+I2,B-I1-I2,A,B).