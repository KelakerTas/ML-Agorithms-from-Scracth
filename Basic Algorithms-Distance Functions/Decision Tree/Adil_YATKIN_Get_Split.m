% This function is for splitting the best split for the dataset

function [b_index, b_value, b_score, left_, right_] = Get_Split(X)

L = size(X,1);

b_index = 999; 
b_value = 999; 
b_score = 999; 


for i=1:2
    for l=1:L
        [left, right] = Test_Split(i,X(l,i),X);

        gini = Gini_Index(left, right, [1, 0]);

        if gini < b_score
            b_index = i; 
            b_value = X(l,i); 
            b_score = gini; 
            left_ = left; 
            right_ = right;

        end

        %fprintf(" X%d < %.3f Gini: %.3f \n ",i, X(l,i), gini);
    end
end

fprintf("Best Split --> X%d < %.3f Gini: %.3f \n ",b_index, b_value, b_score);