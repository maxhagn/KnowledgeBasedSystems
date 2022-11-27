#show groupMinus/2.
#show universityMinus/1.
% Model: empty.

% mnr: 1
% incs: groupMinus(parcomp,175)
% incs: groupMinus(complang,175)
% incs: groupMinus(logic,175)
% incs: groupMinus(datascience,175)
% incs: universityMinus(700)

person(albert, 100).
person(bernd, 100).
person(clarissa, 100).
person(dorian, 100).

person(klaus, 100).
person(laura, 100).
person(max, 100).

worksFor(klaus, albert).
worksFor(klaus, bernd).

worksFor(laura, clarissa).
worksFor(laura, dorian).

worksFor(max, klaus).
worksFor(max, laura).

assigned(albert, parcomp).
assigned(bernd, complang).
assigned(clarissa, logic).
assigned(dorian, datascience).