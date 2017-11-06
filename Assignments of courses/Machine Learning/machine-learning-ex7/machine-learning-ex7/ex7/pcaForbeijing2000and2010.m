%%
clc; clear; close all;
load('beijing2000');
load('beijing2010');
fprintf('\nRunning PCA on the data of 2000.\n\n');

[beijing2000_norm, mu, sigma] = featureNormalize(beijing2000);

[U_city2000, S_city2000] = pca(beijing2000);
[U_feat2000, S_feat2000] = pca(beijing2000.');

K = 2;
Zcity2000 = projectData(beijing2000, U_city2000, K);
Zfeat2000 = projectData(beijing2000.', U_feat2000, K);
m = length(Zcity2000(:, 1));
p = length(Zfeat2000(:, 1));
str_feat = [];

plot(Zcity2000(:, 1) / 80, Zcity2000(:, 2) / 10, 'bo');hold on;axis square;
n = 1 : m;
str = [repmat(' ', m, 1) num2str(n')];
text(Zcity2000(:, 1) / 80, Zcity2000(:, 2) / 10 ,str);

plot(Zfeat2000(:, 1) / 80, Zfeat2000(:, 2) / 10, 'r*');
legend('城市','产业');
q = 1 : p;
str_feat = [repmat(' ', p, 1) num2str(q')];
text(Zfeat2000(:, 1) / 80, Zfeat2000(:, 2) / 10 ,str_feat);

xlabel('主成分1');ylabel('主成分2');

fprintf('Program paused. Press enter to continue.\n')
pause;
%%
load('beijing2010');
fprintf('\nRunning PCA on the data of 2000.\n\n');
[beijing2010_norm, mu, sigma] = featureNormalize(beijing2010);
%%
