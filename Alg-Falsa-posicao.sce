clear
clc

function y = f(j)
    y = 1 - (1+j).^(-9) - 5.28*j
endfunction

j=0:.005:1;
TaxaA = f(j);

//  ----- ACHAR OS PONTOS INICIAIS PELO GRÁFICO --------
//plot(j,TaxaA)
//plot(j,zeros(1,length(j))) 

a=0.12;
b=0.13;
x=a;
p=3;
inter = 0;
//f(a)*f(b) Teste para saber se o X0 está neste intervalo definido



   while(%t)  //Loop infinito 
       xa = x;
       //Forma utilizada para encontrar onde a reta que liga 'a' e 'b'
       //corta o eixo das abcissas 
       x = a-(b-a)*f(a)/(f(b)-f(a));  
       inter=inter+1
       er = abs((x-xa)/x);  //Erro relativo
       
       if(f(a)*f(x)<0)  then
           b=x;
       else
           a=x;
       end
        
        if(er>=10.^(-p)) then  //Condição de parada, solução aceitavel
            break
        end
       
   end
 x  
 inter
   

