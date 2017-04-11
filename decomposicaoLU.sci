// Resolução do sistema do tipo Ax = b
A = [2 3 -4 4; -4 -7 11 -6; 6 11 -20 10; -2 -7 22 -6]
b = [-1; 5; -13; 25]
function [L,U] = decomposicaoLU (A) //Decompoem a matriz A em duas matrizes triangulares
    [n,c] = size(A);
    L = eye(n,n);  //Protótipo da matriz L , matriz identidade
    for j = 1:(n-1)
        pivor = A(j,j);
        for i = j+1:n
            fator = A(i,j)/pivor;
            A(i,:) = A(i,:) - fator*A(j,:); //Eliminacao na matriz A
           L(i,j) = fator;
       end
    end
    U = A
endfunction

function x =trianInf (A,b)  //Resolução da matriz superior
    [l,c] = size(A);
    x=zeros(c,1);
    x(1) = b(1)/A(1,1);
    for i=2:c
        x(i) = (b(i)-A(i,:)*x)/A(i,i)
    end
endfunction

function x =trianSup (A,b)  //Resolução da matriz Inferior
    [l,c] = size(A);
    x(c) = b(c)/A(c,c);
    for i=c-1:-1:1
        x(i) = (b(i)-A(i,:)*x)/A(i,i)
    end
endfunction

function x= sistemaLU (A,b)
    [L U] = decomposicaoLU (A);
    y = trianInf (L,b);
    x = trianSup (U,y);
    
endfunction
x //Resultado
