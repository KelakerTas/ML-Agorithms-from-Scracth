%Minkovsky Distance Function
function f = MINKOVSKY_dist(X, Y, p)

L = length(X);

sum = 0;

if p>=1

    k = 1/p;

    for i=1:L
        sum = sum + (abs(X(i) - Y(i)))^p;

    f = sum^k;
    end

else
    f = [];

end