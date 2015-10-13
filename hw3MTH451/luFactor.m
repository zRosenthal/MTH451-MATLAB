function [ L,U ] = luFactor( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[n,n] = size(A);
L = zeros(n,n);
U = zeros(n,n);
for i = 1 : n
    if abs(A(i,i)) < 0
        error('zero pivot encountered');
    end
    for k = 1 : i-1
        L(i,k) = A(i,k);
        for j = 1 : k-1
            L(i,k) = L(i,k) - L(i,j)*U(j,k);
        end
        L(i,k) = L(i,k)/U(k,k);
    end
    for k = 1 : n
        U(i,k) = A(i,k);
        for j = 1 : i -1
            U(i,k) = U(i,k) - L(i,j)*U(j,k);
        end
    end
    L(i,i) = 1;
end
end

