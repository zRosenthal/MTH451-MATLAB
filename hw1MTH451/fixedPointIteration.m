function [ solution, i ] = fixedPointIteration( g,x0, decimalPlaces)
%FIXEDPOINTITERATION Summary of this function goes here
%   Detailed explanation goes here
x(1) = x0;
done = false;
i=1;
TOL = .5*10^(-decimalPlaces);
while(not(done))
    x(i+1)=g(x(i));
    if(abs(x(i+1)-x(i))<TOL)
       done = true; 
    end
    i = i+1;
end
solution = x(i);
outputFormat = strcat('%0.',num2str(decimalPlaces),'f');
solution = sprintf(outputFormat,solution);
end

