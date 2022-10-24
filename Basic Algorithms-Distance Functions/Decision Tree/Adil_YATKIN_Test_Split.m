% Test Split Function

function [left, right] = Test_Split(Index, Value, X)

L = size(X,1);

left = [];
right=[];

for row=1:L
    if X(row, Index)<Value
        left = [left ;X(row,:)];
    else
        right = [right ;X(row,:)];
    end
end

left = double(left);
right = double(right);
