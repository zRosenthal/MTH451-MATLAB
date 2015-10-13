function [ c ] = secantMethod( f, x0, x1)
%SECANTMETHOD Summary of this function goes here
%   Detailed explanation goes here
count = 0;
while(count < 5)
    x1 = x1 - (f(x1))*(x1 - x0)/(f(x1)- f(x0));
   count = count + 1;
end
c = double(x1);
outputFormat = strcat('%0.',num2str(8),'f');
c = sprintf(outputFormat,c);
end

