function [ x ] = conGradient( A, b, n )
%CONGRADIENT Summary of this function goes here
%   Detailed explanation goes here
x = zeros(n,1);
r = b - A * x;
D = diag(A,0);
M = inv(A);
z = M * r;
d = z;
for k = 0:100000
    if r == 0
        stop;
    end
    a = (r.' * z) / (d.' * A * d);
    x = x + a * d;
    r = r - a * A *d;
    z = M*r;
    c = (r.' * z) / (r.' * z);
    d = z + c*d;
end

end

