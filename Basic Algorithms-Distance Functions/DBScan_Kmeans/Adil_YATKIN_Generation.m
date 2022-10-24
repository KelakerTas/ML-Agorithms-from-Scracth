% New Trial For DataSet Generation

% Generate a Dataset

clear 
clc

% Sample sizes
n(1) = 500;
n(2) = 500;
n(3) = 500;
n(4) = 500;

% mean values
mean(1).mu = [-3,-3];
mean(2).mu = [3,-3];
mean(3).mu = [-3,3];
mean(4).mu = [3,3];

L = [4, 0; 0, 4]; %radii control

theta = 45;
Q = [cosd(theta), -sind(theta); sind(theta), cosd(theta)]; 

C = Q * L * inv(Q);

% Covariance Matrices
cov(1).matrix = C;
cov(2).matrix = C;
cov(3).matrix = C;
cov(4).matrix = C;


D_1 = mvnrnd(mean(1).mu,cov(1).matrix,400);
D_2 = mvnrnd(mean(2).mu,cov(2).matrix,400);
D_3 = mvnrnd(mean(3).mu,cov(3).matrix,400);
D_4 = mvnrnd(mean(4).mu,cov(4).matrix,400);

data_set = [D_1; D_2;D_3;D_4];

fh(1) = figure(1);
clf(fh(1))
scatter(data_set(:,1), data_set(:,2))
xlim([-10, 10])
ylim([-10, 10])

save('DataSet.mat','data_set')
