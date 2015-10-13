[A1,b1] = buildHilbert(2);
x1 = gaussianElm(A1, b1, .005);

[A2,b2] = buildHilbert(5);
x2 = gaussianElm(A2, b2, .005);

[A3,b3] = buildHilbert(10);
x3 = gaussianElm(A3, b3, .005);
display(x1);
display(x2);
display(x3);

 