x0 = linspace(-2,2,1000);
f0 = exp(sin(x0).^3) + x0.^6 -2*x0.^2 -1; 
plot(x0, f0);
syms x;
f(x) = exp(sin(x)^3) + x^6 -2*x^2 -1; 
r1 = newtonsMethod(f, -1.3, 1, 4);
display(r1);
fd = diff(f);
if(fd(r1) == 0) 
    m1 = findMultiplicity(f,r1,2);
end 
r2 = newtonsMethod(f, 1.1, 1, 4);
display(r2);
if(fd(r1) == 0) 
    m2 = findMultiplicity(f,r2,2);
end 
r3 = newtonsMethod(f,0,1,8);
display(r3);
if(fd(r3) == 0) 
    m3 = findMultiplicity(f,r3,2);
    display(m3);
end 

