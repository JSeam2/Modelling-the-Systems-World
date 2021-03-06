% file name:  SteepestDescent.m
% This Matlab code implements steepest descent method for the minimizing 
% function: z = f(x1,x2)= 2x1^2 + x2^2 + (x1 + x2)^2 -20x1 -16x2

% Two versions are possible: Line search and Fixed Step Size

clear; % clears all past data

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SET PARAMETERS:
 eps  = 5*10^-2; % How close do we want to be to the exact optimal solution?
 linesearch = 1;  % Turn this on if we want to choose the step size using line search.
                    % Turn this off, i.e., set it to 0, if you want use
                    % fixed step size.
 if linesearch == 0,
    sigma = 10^-2; % if using fixed stepsize, determine the stepsize here.
 end
 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INITIALIZATION:
% Read in a starting point
  x =[0,0]';    % Choose the initial point to start the method
% Set iteration counter
  iter = 1;     % Counter to keep track of the number of iterations and store values
% Calculate function value of the current iterate and store it
y(iter) = func(x);
% Calculate the gradient to check its norm
g = grad(x);



  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if linesearch == 1,
% BEGIN STEEPEST DESCENT with LINE SEARCH
  while  norm(g) > eps  % enter the loop when your solution is not close enough
    iter = iter + 1;    % Increse iteration counter
    sigmaOpt = -grad(x)'  ;
    x = x - sigmaOpt * g ; % Update current iterate
    y(iter) = func(x) ;  % Calculate new function value
    g = grad(x) ;        % Calculate new gradient  
  end
  
else
  % BEGIN STEEPEST DESCENT with FIXED STEP SIZE
  while  norm(g) > eps  % enter the loop when your solution is not close enough
    iter = iter + 1;    % Increse iteration counter
    x = x - sigma * g ; % Update current iterate
    y(iter) = func(x) ;  % Calculate new function value
    g = grad(x) ;        % Calculate new gradient  
  end
  
end
  
 
% Output x and iter
  x, y(iter), iter,
  plot([1:1:iter],y);