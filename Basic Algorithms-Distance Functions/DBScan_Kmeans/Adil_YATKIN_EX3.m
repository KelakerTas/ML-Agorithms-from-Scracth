% K-means with new dataset which is good for clustering with K-means but
% bad with DBSCAN clustering

clear
clc

% load dataset
load('DataSet.mat','data_set')
rng(1)

K = 4; % number of clusters
p = 2; % Minkowsky --> Euclidean (2)

centroid = rand(4,2);

[rows, ~] = size(data_set);

for l=1:8
    fh(l) = figure(l);
    clf(fh(l))

    % We will define distances of each point to centroids
    for i=1:rows
        for j=1:K
            distances(j) = minkovsky(data_set(i,:),centroid(j,:), p);
        end
        a=find(min(distances)==distances);
        IDX(i)=a(1,1);
    end

    % For each label we will recompute the centroids

    for j=1:K

        switch j
            case 1
                c1 = "blue";
            case 2 
                c1 = "red";
            case 3
                c1 = "magenta";
            case 4 
                c1 = "black";
        end

        cluster = find(IDX==j);
        centroid(j,:) = mean(data_set(cluster, :));

        scatter(data_set(cluster, 1), data_set(cluster, 2))
        hold on
        clear cluster
    end
end

% DBSCAN algorithm results
labels = DBscan(data_set, 0.5, 5);
