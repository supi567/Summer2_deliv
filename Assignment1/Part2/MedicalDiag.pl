%Diagnostic System in Prolog

case(Patient,Influenza):-
						symptom(Patient, Fever),
						symptom(Patient, Cough),
						symptom(Patient, Sore_throat),
						symptom(Patient, stuffy nose),
						symptom(Patient, Runny),
						symptom(Patient, Muscle),
						symptom(Patient, body_aches)
						symptom(Patient, Headaches)
						symptom(Patient, Fatigue)
						symptom(Patient, Vomiting).
								
case(Patient,AIDS):-
						symptom(Patient, Rapid_weight_loss),
						symptom(Patient, Recurring_fever),
						symptom(Patient, Extreme_and_unexplained_tiredness),
						symptom(Patient, Prolonged_swelling_of_the_lymph_glands).
						symptom(Patient, Diarrhea)
						symptom(Patient, Sores_of_the_mouth)
						symptom(Patient, Pneumonia)
						symptom(Patient, Memory_loss).
							
case(Patient,Hepatitis C):-
						symptom(Patient, fever),
						symptom(Patient, feeling_tired),
						symptom(Patient, nausea),
						symptom(Patient, vomiting).
						symptom(Patient, muscle_pain)
						symptom(Patient, pain_in_your_stomach)
						symptom(Patient, a_yellowing_in_your_eyes)
						symptom(Patient, abnormalities_in_urine).
						
case(Patient,Pregnancy):-
						symptom(Patient, Implantation_bleeding),
						symptom(Patient, Missed_period),
						symptom(Patient, Temperature),
						symptom(Patient, Fatigue).
						symptom(Patient, Heart_Rate)
						symptom(Patient, High_Blood_Pressure)
						symptom(Patient, Frequent_Urination)
						symptom(Patient, Bloating).
						symptom(Patient, Morning_sickness),
						symptom(Patient, Smell_sensitivity),
						symptom(Patient, Weight_gain),
						symptom(Patient, Heart_burn).

% Need to complete the rules to get type of case