#show groupMinus/2.
#show universityMinus/1.
% Model: empty.

% mnr: 1
% incs: groupMinus(parcomp,150)
% incs: groupMinus(complang,150)
% incs: groupMinus(logic,150)
% incs: groupMinus(datascience,150)
% incs: groupMinus(compilers,150)
% incs: groupMinus(ds,150)
% incs: groupMinus(ml,150)
% incs: groupMinus(ai,150)
% incs: groupMinus(business,150)
% incs: groupMinus(algo,150)
% incs: groupMinus(management,10500)
% incs: universityMinus(12000)

person(simon, 10000).

person(albert, 100).
person(bernd, 100).
person(clarissa, 100).
person(dorian, 100).
person(emil, 100).
person(flora, 100).
person(gustav, 100).
person(heinrich, 100).
person(ida, 100).
person(jakob, 100).

person(klaus, 100).
person(laura, 100).
person(max, 100).
person(nikolaus, 100).
person(oman, 100).
person(peter, 100).
person(quentin, 100).
person(richard, 100).
person(sebastian, 100).
person(tom, 100).

worksFor(klaus, albert).
worksFor(laura, bernd).
worksFor(max, clarissa).
worksFor(nikolaus, dorian).
worksFor(oman, emil).
worksFor(peter, flora).
worksFor(quentin, gustav).
worksFor(richard, heinrich).
worksFor(sebastian, ida).
worksFor(tom, jakob).
worksFor(klaus, albert).

worksFor(klaus, simon).
worksFor(laura, simon).
worksFor(max, simon).
worksFor(nikolaus, simon).
worksFor(oman, simon).
worksFor(peter, simon).
worksFor(quentin, simon).
worksFor(richard, simon).
worksFor(sebastian, simon).
worksFor(tom, simon).
worksFor(klaus, simon).


assigned(albert, parcomp).
assigned(bernd, complang).
assigned(clarissa, logic).
assigned(dorian, datascience).
assigned(emil, compilers).
assigned(flora, ds).
assigned(gustav, ml).
assigned(heinrich, ai).
assigned(ida, business).
assigned(jakob, algo).
assigned(simon, management).