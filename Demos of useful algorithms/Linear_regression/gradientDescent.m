function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCE performs gradient descent to learn theta by taking num_iters
%   Input:
%       X             features 
%       y             corrsponding value to X
%       theta         initialized theta
%       alpha         learning rate
%       num_iters     learning iteration
%   Out put:
%       theta         learned theta
%       J_history     the cost for each interation

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - (1 / m) * alpha * (X.' * ((X * theta - y)));
    J_history(iter) = computeCost(X, y, theta);

end

end
