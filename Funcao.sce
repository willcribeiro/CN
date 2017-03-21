clear 
clc


function y=f(x)  //Funcao ln de x
    y = log(x)
endfunction

function t=p(c)
    t = log(2.5)+ ((c-2.5)/2.5) - (2*((c-2.5).^2)/(2.5).^2)   //Funcao 2
endfunction

function Er=re(T)
    Er = (12*(2.6-2.5) ./T.^3)  // Erro relativo
endfunction

//x=1:0.001:4  Intervalos de x
//plot(x,f(x))  Plotar grafico de x

//c=1:0.001:4   Intervalos de C
//plot(c,p(c))   Grafico de C

//y = f(2.6)  Calculo da funcao em 2.6
//t = p(2.6)    Calculo da funcao em 2.6
//T=1:0.001:4   Intervalos de T
plot(T,re(T))
Er=re(2.5)  
