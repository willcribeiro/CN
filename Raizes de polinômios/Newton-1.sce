// Alg  de Newton
clc
clear 
function y=f1(j)  // Função 1
    y=1-((1+j).^(-48))-34.95*j
endfunction

function y=d1(j)  // derivada1 1
    y=(48./(((1+j).^(49)))-34.95)
endfunction

function y=f2(k)  //Função 2
    y=1-((1+k).^(-60))-39.63*k
endfunction

function y=d2(j)  // derivada2
    y=(60./(((1+j).^(61)))-39.63)
endfunction

a=0.01  //Entervalos de confiança
b=0.03
x=a
p=5
inte=0

while(%t)
    xold=x
    x=xold-(f1(xold)/d1(xold))
    er=abs((x-xold)/x)    
    inte=inte+1   
   if(er<=10.^(-p)) then
       break
   end
end
x
 //Numero de interações para achar a raiz do primeiro polinômio : 5
 // Valor do X em notação de Ponto flutuante : X = 0.13775x10^-1
 // Valor do erro relativo 0.4798x10^-10
 
a=0.01  //Entervalos de confiança
x=a
p=5
inte=0

 while(%t)
    xold=x
    x=xold-(f2(xold)/d2(xold))
    er=abs((x-xold)/x)    
    inte=inte+1
    if(er<=10.^(-p)) then
       break
   end
end
x
  // Numero de interações para encontrar a raiz da segunda função : 5
  // Valor de X na notação ponto flutuante X = 0.14754x10^-1
  // Valor do erro relativo 0.5600x10^-9
 


