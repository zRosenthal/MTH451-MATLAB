
function [ A,b ] = sparseBuilder1( n )
%SPARSEBUILDER Summary of this function goes here
%   Detailed explanation goes here
e = ones(n,1);
A = spdiags([-e 3*e -e], -1:1, n,n);
b = ones(n,1);
b(1) = 2;
b(n) = 2;
end

