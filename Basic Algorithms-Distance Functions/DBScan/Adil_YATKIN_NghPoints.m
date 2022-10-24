% This function calculates the number of neighboors for a given point

function neighbors = NghPoints(X, P, eps)

L = length(X);

p = 2; % We use eucledian distance

i = 0;

for N=1:L

    if MINKOVSKY_dist(X(P,:), X(N,:), p) < eps

        i = i + 1;

        neighbors(i) = N;
    end
end

neighbors = neighbors;