%Chebyshev Distance Function
function f = CHEBYSHEV_dist(X, Y)

L = length(X);

dist = 0;

for i=1:L
    dist_2 = abs(X(i) - Y(i));
    
    if dist_2 > dist
        dist = dist_2;
    end
end

f = dist;
         