clc
clear

function P1=f1(j)  //Função juros 1
    P1=65000*(j./(1-(1+j).^(-48)))-1860
    
endfunction

function P2=f2(k) // Função Juros 2 
    P2=65000*(k./(1-(1+k).^(-60)))-1640
    
endfunction

//j=0:0.001:1
//plot(j,f1(j))

k=0:0.001:1
plot(k,f2(k))
