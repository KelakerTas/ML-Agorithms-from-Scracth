% K-Medoids Algorithm Implementation
load("practice_2_03_02_2022","DS")
DS;

K = 3; % number of clusters
p = 2; % minkowsky p-value
max_iteration = 2;

L = length(DS);

medoids = randsample(L,K);

[total_cost_1, IDX] = get_cost(DS,medoids,p);

for i=1:max_iteration

    fh(i) = figure(i);
    clf(fh(i))

    swap=false;

    for j=1:L

        if ismember(j,medoids)==false;
            for k=1:K
                medoids_new = medoids;
                medoids_new(k) = j ;
                [total_cost_2, IDX] = get_cost(DS, medoids_new,p);
                
                %Update Mechanism
                
                if total_cost_2 < total_cost_1
                    medoids = medoids_new;
                    total_cost_1 = total_cost_2;
                    medoids;
                    swap = true;
                medoids
                end
            end
            end   
    end

    for q=1:K

        switch j
            case 1
                c1 = "blue";
            case 2 
                c1 = "red";
            case 3
                c1 = "magenta";
        end

        cluster = find(IDX==q);
        scatter(DS(cluster, 1), DS(cluster, 2))
        hold on
        clear cluster
    end

    if swap==false;
        break
    end
end

