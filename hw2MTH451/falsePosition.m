function [ c ] = falsePosition( f, a, b )
%FALSEPOSITION Summary of this function goes here
%   Detailed explanation goes here
count = 0;
while(count < 5)
count = count + 1;
c = (b*f(a) - a*f(b))/(f(a) - f(b));
display(c);
if f(c) == 0
    stop 
end
if f(a)*f(c) < 0
    b = c;
else 
    a = c;
end
end
c = double(c);
outputFormat = strcat('%0.',num2str(8),'f');
c = sprintf(outputFormat,c);
end

