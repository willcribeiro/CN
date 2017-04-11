// Eliminação de Gauss
A = [8 2 -2; 10 2 4; 12 2 2];
b = [-2;4;6]
function [A,b] = gauss(A,b)
    [n,c] = size(A); //Tamanho de A 
    [n] = length(b); //Quantidade de elementos
    for j=1:n-1
        pivor = A(j,j);
        for i=j+1:n
            fator = A(i,j)/pivor
            A(i,:) = A(i,:) - fator*A(j,:) //Transformar matriz em triang.  Superior
            b(i) = b(i) - fator*b(j)
        end
    end
endfunction
[ A, b] = gauss (A,b)

