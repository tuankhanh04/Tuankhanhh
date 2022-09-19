#include <stdio.h>

int tong(int num1,int num2,int num3);
int xettuyen(int tong);
int main() 
{ 
	int a,b,c;
	int kq;
	char ans;
	do{
	printf("Nhap diem thu 1: \n");
	scanf("%d",&a);
	printf("Nhap diem thu 2: \n");
	scanf("%d",&b);
	printf("Nhap diem thu 3: \n");
	scanf("%d",&c);
    kq = tong(a,b,c);
	printf("Tong diem 3 mon %d \n",kq);
	printf("\n",xettuyen(kq));
	fflush(stdin);
	printf(" Chon Y va y de tiep duoc :\n");
	scanf("%c",&ans);
	}
	while (ans=='y'|| ans=='Y');
	
	return 0;}
   int tong(int num1,int num2,int num3)
   {
   	int tong;
   	tong = num1 + num2 + num3;
   	return tong;
   }
   int xettuyen(int tong)
   {
   	if (tong < 22){
	   printf("\n TRUOT ");
   	return 0;}	
    else{
	if (tong >= 28){
		printf("Do Dai Hoc Bach Khoa\nDo Dai Hoc Cong Nghe\nDo FPT University\n");}
		else if (tong >= 25){
		printf(" Do Dai Hoc Cong Nghe\n Do FPT University\n");}
    	else if (tong >= 22){
		printf("Do Dai Hoc Cong Nghe\n");}
		else {
		}
		return 1;
}
}
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   
   
   
   
   
   
   
   
   
   
   
   
   
   
