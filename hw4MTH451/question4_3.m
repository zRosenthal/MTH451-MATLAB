[A1, b1] = buildHilbert(4);
[A2, b2] = buildHilbert(8);
x1 = conGradient(A1, b1, 4);
x2 = conGradient(A2, b2, 8);
display(x1);
display(x2);
