syms x;
f(x) = x^3 - 2*x - 2;
a = falsePosition(f, 1, 2);
f(x) = exp(x) + x -7;
b = falsePosition(f,1,2);
f(x) = exp(x) +sin(x) -4;
c = falsePosition(f,1,2);