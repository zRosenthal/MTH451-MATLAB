A1 = [2,-2,-1;4,1,-2;-2,1,-1];
b1 = [-2,1,-3];
x1 = gaussianElm(A1,b1,.005);
display(x1);

A2 = [1,2,-1;0,3,1;2,-1,1];
b2 = [2,4,2];
x2 = gaussianElm(A2,b2,.005);
display(x2);

A3 = [2,1,-4;1,-1,1;-1,3,-2];
b3 = [-7,-2,6];
x3 = gaussianElm(A3,b3,.005);
display(x3);