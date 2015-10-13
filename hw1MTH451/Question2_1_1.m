syms x;
f(x) = x^5 + x - 1;
a = bisectionMethod(f,0,1,8);

f(x) = 6*x + 5 - sin(x);
b = bisectionMethod(f,-1,0,8);

f(x) = log(x) + x^2 - 3;
c = bisectionMethod(f,1,2,8);

display(strcat('(a) =  ',a));
display(strcat('(b) =  ',b));
display(strcat('(c) =  ',c));