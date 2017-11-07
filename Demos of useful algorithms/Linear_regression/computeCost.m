function J = computeCost(X, y, theta)
%   J = computeCost(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%   Input:
%       X             features 
%       y             corrsponding value to X
%       theta         initialized theta
%   Out put:
%       J             the cost for the given theta 

m = length(y); % number of training examples
J = 1 / (2 * m) * sum(((X * theta) - y) .^2);
end
