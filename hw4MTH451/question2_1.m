[A1,b1] = sparseBuilder1(100);
[steps1, backEr1] = jacobiMethod(A1, b1, 0.00000025);
[A2,b2] = sparseBuilder1(100000);
%[steps2, backEr2] = jacobiMethod(A2, b2, 0.00000025);
