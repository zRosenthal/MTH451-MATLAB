function [ A, b ] = buildHilbert( n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A = zeros(n,n);
b = ones(n,1);
for i = 1 : n
    for j = 1 : n
        A(i,j) = 1/(i+j-1);
    end
end
end

