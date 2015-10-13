function [ L, U, x ] = luFactor2( A, b )
%LUFACTOR2 Summary of this function goes here
%   Detailed explanation goes here
[~,n] = size(A);
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
c = zeros(n,1);
c(1) = b(1)/L(1,1);
for k = 2 : n
     s = 0;
     for j = 1 : k-1
         s = s + L(k,j)*c(j);
     end
     c(k) = b(k) - s;
end
x = zeros(n,1);
for k = n : -1 : 1
    t = 0;
    for j = k + 1: n
        t = t + U(k,j)*x(j);
    end
    x(k) = (c(k) - t)/U(k,k);
end
end

