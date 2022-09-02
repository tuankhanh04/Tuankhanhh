#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int num, res;
	printf("Enter a number: ");
	scanf("%d",&num);
	res = num % 2;
	if (res == 2)
	printf("The  number is  Evan");
	else
	printf("The number is Odd");
	
	return 0;
}
