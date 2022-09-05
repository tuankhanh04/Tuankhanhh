#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

void main(int argc, char *argv[])
 {
	int cardid = 4;
	int  pin =   4;
	int nhap;
	int sotiengoc =1000000;
	int tienrut;
	int chuyentien;
	int tiendu;
		
	printf("login cardid  :\n");
	scanf("%d",&cardid);
	printf("login pin : \n");
	scanf("%d",&pin);
		if (cardid == 4 && pin == 4)
		{
		    printf("Menu \n 1 rut tien\n 2 chuyen tien\n 3 xem so du\n 4 ket thuc\n");
			scanf("%d",&nhap);
			switch (nhap)
			{
			
				case 1:
					 printf("nhap so tien muon rut :");
				     scanf("%d",&tienrut);
				if (tienrut >= sotiengoc)
				     printf("So tien cua ban khong du de thuc hien");
				else 
				     tiendu = sotiengoc - tienrut;
					 printf("ban rut thanh cong\n");
					 printf("\nso du cua ban con %d",tiendu); 
				break;
				
				case 2:
					printf("Nhap so tien muon chuyen :");
					scanf("%d",&chuyentien);
				if (chuyentien >= sotiengoc)
				    printf("Khong hop le \n");
				else 
				    tiendu = sotiengoc - chuyentien;
					printf("ban chuyen tien thanh cong \n");
					printf("so du cua ban con %d",tiendu);
				break;
				case 3: 
					printf("So tien du : %d",sotiengoc);
					break;
				default: break;
			}	
		}else
		{
			 printf("Ban da nhap sai login card hoac password");
		}
}

	
	


	 

