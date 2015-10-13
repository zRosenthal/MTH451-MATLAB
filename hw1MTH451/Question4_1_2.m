syms x;
%(a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(x) = (2*x+2/(x^2))/3;
[solutiona, iterationsa] = fixedPointIteration(f,1,8);

%(b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(x) = (2*x+3/(x^2))/3;
[solutionb, iterationsb] = fixedPointIteration(f,1.5,8);

%(c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f(x) = (2*x+5/(x^2))/3;
[solutionc, iterationsc] = fixedPointIteration(f,2,8);

display(strcat('(a) = ',num2str(solutiona),',iterations=',num2str(iterationsa)));
display(strcat('(b) = ',num2str(solutionb),',iterations=',num2str(iterationsb)));
display(strcat('(c) = ',num2str(solutionc),',iterations=',num2str(iterationsc)));