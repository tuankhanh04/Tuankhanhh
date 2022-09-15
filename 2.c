#include <stdio.h>


int main(){
	int tong1(int num1,int num2);
    int hieu1(int num1 ,int num2);
    float thuong1(int num1,int num2);
    int tich1(int num1,int num2); 
    char nhap;
    int g,m;
 do{
 	printf("nhap g: \n");
 	scanf("%d",&g);
	printf("nhap m: \n");
	scanf("%d",&m);
	printf("nhap phep tinh \n");
	fflush(stdin);    // xoa di bo tam thoi cua chuong trinh tam thoi
	scanf("%c",&nhap);
	switch(nhap){
		case '+':{
			printf("Tong = %d\n\n",tong1(g,m));
			break;
		}
		case '-':{
		printf("Hieu = %d\n\n",hieu1(g,m));
			break;
		}
		case'/':{
			printf("Thuong = %f\n\n",thuong1(g,m));
			break;
		}		case'*':{

			printf("Tich = %d\n\n",tich1(g,m));
			break;
		}
	}		
	}while(nhap == 1);
}
		int tong1(int num1,int num2){
    	int a;
    	a = num1+num2;
    	return a;	
	}
	int hieu1(int num1,int num2){
    	int b;
    	b = num1-num2;
    	return b;
	}
  float thuong1(int num1,int num2){
    	float c;
    	c =(float)num1/num2;
		return c;	
	}
	int tich1(int num1,int num2){
		int d;
		d = num1*num2;
		return d;
	}	

	
	
	

