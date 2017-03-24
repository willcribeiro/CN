// Alg  da Biceção 
clc
clear 
function y=f1(j)  // Função 1
    y=1-((1+j).^(-48))-34.95*j
endfunction
function y=f2(k)  //Função 2
    y=1-((1+k).^(-60))-39.63*k
endfunction

a=0.01  //Entervalos de confiança
b=0.03
x=a
p=5
inte=0

while(%t)
    xold=x
    x =((a+b)/2)
    er=abs((x-xold)/x)    
    inte=inte+1
   if(f1(a)*f1(x)<0) then
       b=x
   else
       a=x
   end
   
   if(er<=10.^(-p)) then
       break
   end
end
 //Numero de interações para achar a raiz do primeiro polinômio : 18
 // Valor do X em notação de Ponto flutuante : X = 0.13775x10^-1
 // Valor do erro relativo 0.55x10^-5
 
a=0.01  //Entervalos de confiança
b=0.03
x=a
p=5
inte=0

 while(%t)
    xold=x
    x =((a+b)/2)
    er=abs((x-xold)/x)    
    inte=inte+1
   if(f2(a)*f2(x)<0) then
       b=x
   else
       a=x
   end
   
   if(er<=10.^(-p)) then
       break
   end
end
  // Numero de interações para encontrar a raiz da segunda função : 18
  // Valor de X na notação ponto flutuante X = 0.14754x10^-1
  // Valor do erro relativo 0.52x10^-5
 


