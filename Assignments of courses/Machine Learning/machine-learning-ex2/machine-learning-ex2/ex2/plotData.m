function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
m = length(y);
p = 1; 
q = 1;
posX = zeros(size(X));
negX = zeros(size(X));
for i = 1 : m
    if y(i) == 1
        posX(p, :) = X(i, :);
        p = p + 1;
    else 
        negX(q, :) = X(i, :);     
        q = q + 1;
    end
end
 plot(posX(1 : (p-1), 1), posX(1 : (p-1), 2), 'k+');
 plot(negX(1 : (q-1), 1), negX(1 : (q-1), 2), 'ko');

% =========================================================================



hold off;

end
