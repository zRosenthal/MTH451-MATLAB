function [ c ] = newtonsMethod( f,xn,m, decDig)
%newtonsMethod estimate root given a function f an intial guess x0
%   Detailed explanation goes here
fd = diff(f);
x = 0;
tol = 1/10^decDig;
done = false;
while((abs(x - xn) >= tol) || done)
    pause(.5);
    display(xn);
    display(x);
    x = xn;
    xn = x - f(x)*m/fd(x);
    if(f(xn) == 0)
        done = true;
    end
end
c = double(xn);
outputFormat = strcat('%0.',num2str(8),'f');
c = sprintf(outputFormat,c);
end