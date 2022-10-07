//Mariana Hayashi Garcia - Tecnologia em Informática em Saúde UNIFESP - nº de matrícula: 63785

// programa para cálculo de média, mediana, desvio padrão e valores máx e min

//header
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main () {
 
printf("programa para cálculo de média, mediana, desvio padrão e valores máx e min"); 

     //declarar as variáveis  
       int n, i, j;
       float temp=0;
       float num[100], sum=0, media; 
       float variancia, DP;
       float mediana; 
       float min=sizeof i, max=sizeof i;
  
   
     //solicitar ao usuário a quantidade de números e os números:
       printf("%d, Quantidade de números: ", n);
       scanf("%d", &n); 
    
       
	 for (i = 0; i < n; i++) { 
      
       printf("%d, Digite os números: ", i);
       scanf("%f", &num[i]);
	  
	  
	  //soma dos números
	    sum += num[i];
       
	  //media
        media = sum/n;         
   
    
	
	//valores mínimo e máximo
      if (num[i]<min) min=num[i];     
      if (num[i]>max) max=num[i];             
      
        
        
    //variância
      variancia += pow((num[i] - media),2)/n;
   
   
      
            
     //Desvio padrão 
       DP = sqrt(variancia);
    
   } 
      
     for (i=0; i <n; i++) {
         for (j=i+1; j<n; j++) {
            if (num[i] > num[j]) {
                 temp = num[i];
                 num[i]=num[j];
                 num[j]=temp;
        
           }
     
       }
  }
                 if (n%2==0) 
              
                    mediana=(num[(i-1)/2] + num[i/2])/2.0;
                 
                 else
                     mediana= num[(i/2)];
                
                          


      printf("A média é : %.2f\n", media);
	  
	  printf("O valor mínimo é : %.2f\n, O valor máximo é : %.2f\n", min, max);
      
	  printf("A mediana é : %.2f\n", mediana);
    
      printf("O desvio padrão é : %.2f\n", DP);
	  
	  
	  
	  return 0;
	  
	  }