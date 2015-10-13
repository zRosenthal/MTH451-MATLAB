function [ m ] = findMultiplicity( f, r, decDig )
%FINDMULTIPLICITY Summary of this function goes here
%   Detailed explanation goes here
m = 0;
tol = 1/10^decDig;
while(abs(f(r)) < tol)
    f = diff(f);
    m = m + 1; 
end

end

