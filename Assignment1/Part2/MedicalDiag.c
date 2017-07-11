#include<stdio.h>
#include<conio.h>
char getCase(char);
int main()
{
	char symptom[100];
	printf("enter any case symptom: ");
	scanf("%c",&symptom);
	
	getCase(symptom);
	
	return 0;
}

char getCase(char symptom){
	if(symptom='Fever'||'cough'||'runny'||'muscle')
	{
		printf("\n The entered Symptom belongs to :  Influenza");
	}
}
