function [ A,b ] = sparseBuilder2( n )
%SPARSEBUILDER Summary of this function goes here
%   Detailed explanation goes here
e = ones(n,1);
A = spdiags([e 2*e e], -1:1, n,n);
b = ones(n,1);
b(1) = 1;
b(n) = -1;
end

