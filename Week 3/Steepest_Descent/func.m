%file name:  func.m
%This routine evaluates the function that we want to minimize.
%For Cohort Act, the function is z = f(x1,x2)= 2x1^2 + x2^2 + (x1 + x2)^2
%-20x1 -16x2

function y = func(x)

y = 2*x(1)^2 + x(2)^2 + (x(1)+x(2))^2 - 20*x(1) -16*x(2) ;