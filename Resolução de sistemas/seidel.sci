function [x,i] = seidel(A,b,p)
    [n c] = size(A);
    [B d] = iteracao(A,b);
    xold = ones(3,1);
    x = xold;
    Er = 1
    i_max = 40;
    i=0;
    while (Er>=10^(-p) & i<= i_max)
         for (i = 1:n)
            x(i) = B(i,:)*x + d(i)
         end
         Er = max(abs(x-xold))/max(abs(x))
         xold = x;
         i = i+1;
    end   
endfunction

function [B,d] = iteracao (A,b)
    [n c] = size(A);
    for i = 1:n
        b(i) = b(i)/A(i,i);
        A(i,:) = A(i,:)/A(i,i);
    end
    A = A - eye(n,n);
    B = -A;
    d = b;
endfunction

[x,i] = seidel(A,b,6)
