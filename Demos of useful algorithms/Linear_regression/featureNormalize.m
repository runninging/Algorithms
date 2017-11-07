function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   Returns a normalized version of X where the mean value of eachc feature
%   is 0 and the standard devitation is 1.
%   Input:
%       X             features 
%   Out put:
%       X_norm        normalized X
%       mu            mean value of X
%       sigma         devitation of X
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = mean(X_norm);
sigma = var(X_norm) .^0.5;
X_norm = (X_norm - ones(size(X,1),1) * mu) ./ (ones(size(X,1),1) * sigma);

end
