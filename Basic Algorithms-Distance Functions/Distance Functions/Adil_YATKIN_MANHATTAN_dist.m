% Manhattan Distance function
function f = MANHATTAN_dist(X, Y)

L = length(X);

sum = 0;

for i=1:L
    sum = sum + abs(X(i) - Y(i));
end

f = sum;
