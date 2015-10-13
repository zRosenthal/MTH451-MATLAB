function [ c ] = bisectionMethod(f,a,b, decimalPlaces)
%BISECTIONMETHOD generate root from function and intervals
%  given a function f and bounds a and b, this function
% generates the approximate root between a and b.
format long g
if(f(a)*f(b)>0)
    display('no root in this range');
    return;
end
TOL = .5*10^(-decimalPlaces);
while((b-a)/2>TOL)
   c = (b+a)/2;
   if(f(c)==0)
       return;
   end
   if(f(a)*f(c)<0)
      b=c; 
   else
      a=c;
   end
end
outputFormat = strcat('%0.',num2str(decimalPlaces),'f');
c = sprintf(outputFormat,c);
end

