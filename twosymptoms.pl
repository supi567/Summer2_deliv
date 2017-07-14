disease(hivearly,[fever,chills,rash,night_sweats,muscle_ache,sore_throat,fatigue,swollen_lymph,mouth_ulcer]).
disease(hivlate,[weight_loss,recurring_fever,tiredness,prolonged_swelling,diarrhea,mouth_sores,pneumonia,blotches,depression,memoryloss]).
disease(pregnancy,[implantation_bleeding,missed_period,temperature,fatigue,increased_heartrate,high_BP,frequent_urination,morning_sickness,smell_sensitivity,weightgain,heart_burn]).
disease(influenza,[fatigue,fever,cough,sore_throat,runny_nose,body_ache,headache,vomiting,diarrhea]).
disease(hepatitisC,[fever,tired,nausea,vomiting,muscle_pain,stomach_pain,yellow_eyes,urine_abnormalities]).

symptoms_diagnosis(Symptoms, Diagnosis):-
   member(Symptom, Symptoms),
   disease(Diagnosis, Indications),
   member(Symptom, Indications).