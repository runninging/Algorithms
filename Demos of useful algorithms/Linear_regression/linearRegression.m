%%  Linear regression 
%
%  Instructions
%  ------------
% 
%  This is the file to apply the linear regression by gradient descent and 
%  normal equations, the results are compared.
%
%  Following functions are requied:
%       featureNormalize.m
%       gradientDescentMulti.m
%       normalEqn.m     
%       computeCost.m    
%                                                          By Kang Wang
%                                                          11/7/2017
%
%% ======================= Gradient Decent =======================
clear ; close all; clc

% Load Data
data = load('mydata_linear_regression.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

%normalize the input data
[X mu sigma] = featureNormalize(X);

X = [ones(m, 1) X];

% Set alpha and num_iters
alpha = 0.3;
num_iters = 400;

% Gradient Descent 
theta = zeros(3, 1);
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Theta obtained by gradient descent
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the value by given the input (1650, 3)
value = [1, (1650 - mu(1)) / sigma(1), (3 - mu(2)) / sigma(2)] * theta;
fprintf(['Predicted value by using gradient descent:\n %f\n \n'], value);

%% ================ Normal equation ====================
% Load Data
data = load('mydata_linear_regression.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');

% Estimate the value by given the input (1650, 3)
value = [1, 1650, 3] * theta; 
fprintf(['Predicted value by using normal equations:\n $%f\n'], value);

