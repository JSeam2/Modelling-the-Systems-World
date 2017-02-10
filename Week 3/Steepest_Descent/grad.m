%file name:  grad.m
%This routine evaluates the gradient of the function that we want to minimize.
%For Cohort Act, the function is z = f(x1,x2)= 2x1^2 + x2^2 + (x1 + x2)^2
%-20x1 -16x2

function g = grad(x)
g(1) = 4*x(1) + 2*(x(1) + x(2)) - 20 ; % Calculate the partial derivative wrt x
g(2) = 2*x(1) + 2*(x(1)+x(2)) -16 ; % Calculate the partial derivative wrt y
g = g'; % Make gradient a column vector