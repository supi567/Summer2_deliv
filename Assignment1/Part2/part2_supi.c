#include <stdio.h>
#include <string.h>

int main()
{
    char symptom[100];

    // printf() dislpays the formatted output 
    printf("Enter a Symptom: ");  
    
    // scanf() reads the formatted input and stores them
    scanf("%s", &symptom);  
    
    // printf() displays the formatted output
    printf("You entered: %s", symptom);
    if ((strcmp(symptom, "fever") == 0) || (strcmp(symptom, "cough") == 0) || (strcmp(symptom, "runny") == 0) || (strcmp(symptom, "muscle") == 0) )
        {
            printf("\n The entered Symptom belongs to :  Influenza");
        }
        else if ((strcmp(symptom, "Chills") == 0) || (strcmp(symptom, "Rash") == 0) || (strcmp(symptom, "Night sweats") == 0) || (strcmp(symptom, "Muscle_aches") == 0) )
        {
            printf ("\n the entered symptom belongs to : HIV");
        }
        else if ((strcmp(symptom, "pain in your stomach") == 0) || (strcmp(symptom, "abnormalities in urine") == 0) || (strcmp(symptom, "a yellowing in your eyes") == 0) )
        {
            printf ("\n the entered symptom belongs to : hepatitis C");
        }
        else{
            printf ("\n No desease found");
        }
}
