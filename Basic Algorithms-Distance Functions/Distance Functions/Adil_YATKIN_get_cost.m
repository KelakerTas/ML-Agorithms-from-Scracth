%Cost function for K-Medoids

function [total_cost, IDX] = get_cost(X,medoids,p)

total_cost = 0;

L = length(X);

for j=1:L
    for k=1:length(medoids)
        distances(k) = minkovsky(X(j,:), X(medoids(k),:), p);
    end
    a=find(min(distances)==distances);
    IDX(j)=a(1,1);
    total_cost = total_cost + distances(a);
end

total_cost = total_cost;
IDX = IDX;