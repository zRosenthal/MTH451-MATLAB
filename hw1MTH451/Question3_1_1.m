% (a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = linspace(-2,2,20);
y = 2*power(x,3) - 6*x - 1;
plot(x,y);

% Roots in [-2,-1], [-1,0], and [1,2]
syms x;
f(x) = 2*x^3 - 6*x - 1;
a1 = bisectionMethod(f,-2,-1,6);
a2 = bisectionMethod(f,-1,0,6);
a3 = bisectionMethod(f,1,2,6);

% (b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = linspace(-2,1,20);
y = exp(x-2)+power(x,3)-x;
figure
plot(x,y);

% Roots in [-2,-1], [-.5,.5], and [.5,1.5]
syms x;
f(x) = exp(x-2) + x^3 - x;
b1 = bisectionMethod(f,-2,-1,6);
b2 = bisectionMethod(f,-.5,.5,6);
b3 = bisectionMethod(f,.5,1.5,6);

% (c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = linspace(-1,1,20);
y = 1 + 5*x - 6*power(x,3) - exp(2*x);
figure;
plot(x,y);

%Roots in [-1.5,-0.5], [-0.75,0.25], [0.25, 1.25]
syms x;
f(x) = 1+ 5*x - 6*x^3 - exp(2*x);
c1 = bisectionMethod(f,-1.5,-.5,6);
c2 = bisectionMethod(f,-.75,.25,6);
c3 = bisectionMethod(f,.25,1.25,6);


%Displaying answers
display(strcat('Roots for (a) : ',a1,', ',a2,', ',a3));
display(strcat('Roots for (b) : ',b1,', ',b2,', ',b3));
display(strcat('Roots for (c) : ',c1,', ',num2str(c2),', ',c3));

