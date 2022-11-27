#show groupMinus/2.
#show universityMinus/1.

% Model: 1
% Answer Set 1: universityMinus(700) groupMinus(parcomp,175) groupMinus(complang,175) groupMinus(logic,175) groupMinus(datascience,175)
% mnr: 1
% incs: universityMinus(700) groupMinus(parcomp,175) groupMinus(complang,175) groupMinus(logic,175) groupMinus(datascience,175)

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