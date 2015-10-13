%(a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;
f(x) = (1-x)^(1/5);
a = fixedPointIteration(f,.5,8);

%(b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;
f(x) = (sin(x)-5)/6;
b = fixedPointIteration(f,.5,8);

%(c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;
f(x) = (3-log(x))^(1/2);
c = fixedPointIteration(f,.5,8);

display(strcat('(a) = ',num2str(a)));
display(strcat('(b) = ',num2str(b)));
display(strcat('(c) = ',num2str(c)));