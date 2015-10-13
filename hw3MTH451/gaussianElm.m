function [ x ] = gaussianElm( A, b, eps )
%GAUSSIANELM Summary of this function goes here
%   Detailed explanation goes here
[n,n] = size(A)
for j=1 : n-1
    if abs(A(j,j)) < eps 
        display('zero pivot encountered');
    end
    for i = j+1 : n
        mult = A(i,j)/A(j,j);
        for k = j+1:n
            A(i,k) = A(i,k) - mult*A(j,k);
        end
        b(i) = b(i)- mult*b(j);
    end
end

for i = n: -1 : 1
    for j = i+1 : n
        b(i) = b(i) - A(i,j)*x(j);
    end
    x(i) = b(i)/A(i,i);
end

        
    
    
end

