% Canberra Distance Function
function f = CANBERRA_dist(X,Y)

L = length(X);

sum = 0;

for i=1:L
    sum = sum + abs(X(i)-Y(i))/(abs(X(i)) + abs(Y(i)));
end

f = sum;