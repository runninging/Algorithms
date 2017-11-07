function [theta] = normalEqn(X, y)
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.
%   Input:
%       X             features 
%       y             corrsponding value to X
%   Out put:
%       theta         solution to linear regression 
theta = zeros(size(X, 2), 1);
theta = pinv(X.' * X) * X.' * y;
end
