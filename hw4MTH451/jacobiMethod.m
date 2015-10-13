function [ steps, backEr ] = jacobiMethod( A, b, tol )
%JACOBIMETHOD Summary of this function goes here
%   Detailed explanation goes here
n = length(b);
d = diag(A);
r = A - diag(d);
x = zeros(n,1);
p=zeros(n,1);
c = zeros([n,1]);
e = zeros([n,1]); 
n1=0;
err=0;
relerr=1; 
while (1)
    x = (b-r*x)./ d;
    err=abs(norm(x-p));
    relerr=err/(norm(x)+eps);
    p=x;
    n1=n1+1;
    if err < tol || relerr < tol
        break 
    end
end
xc=x;
steps=n1;
for i=1:n 
    for j=1:n 
        xa(j)=1;
        c(i)=c(i)+A(i,j)*xa(j);
        e(i)=e(i)+A(i,j)*xc(j);
    end
end
for i = 1:n
    dif(i)=abs(xa(i)-xc(i));
    dif2(i)=abs(e(i)-c(i));
end
forwardEr=max(dif, [],2);
backEr=max(dif2,[],2);
end

