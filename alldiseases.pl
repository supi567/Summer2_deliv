go:- hypothesis(Disease),
    write(Disease),
    nl,
    undo.
hypothesis(influenza):- influenza, !.
hypothesis(aids):- aids, !.
hypothesis(hepatitisc):- hepatitisc, !.
hypothesis(pregnancy):- pregnancy, !.
hypothesis(unknown). /* no diagnosis*/

influenza :-
       verify(fever),
       verify(cough),
       verify(stuffy_nose),
       verify(sore_throat),
	   verify(muscle_pain),
	   verify(body_Ache),
	   verify(headache),
	   verify(fatigue),
	   verify(vomiting).
	   
aids :-
       verify(weight_loss),
	   verify(recurring_fever),
	   verify(tired),
	   verify(diarrhea),
	   verify(mouth_sores),
	   verify(pneumonia),
	   verify(memoryloss).
	   
hepatitisc :-
       verify(fever),
	   verify(feeling_tired),
	   verify(nausea),
	   verify(vomiting),
	   verify(stomachpain),
	   verify(muscle_pain),
	   verify(yellow_eyes),
	   verify(urine_abnormalities).
	   
pregnancy :-
       verify(missed_period),
	   verify(temperature),
	   verify(bloating),
	   verify(fatigue),
	   verify(highBP),
	   verify(frequent_urination),
	   verify(weightgain),
	   verify(smell_sensitivity),
	   verify(heart_burn).

ask(Question) :-
    write('Does the patient have the following symptom: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :- (yes(S) -> true ;
               (no(S)  -> fail ;
               ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.