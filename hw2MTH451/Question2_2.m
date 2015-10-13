syms x;
f(x) = x^5 + x - 1;
a = newtonsMethod(f,1,1,8);

f(x) = 6*x + 5 - sin(x);
b = newtonsMethod(f,-1,1,8);

f(x) = log(x) + x^2 - 3;
c = newtonsMethod(f,2,1,8);

display(a);
display(b);
display(c);