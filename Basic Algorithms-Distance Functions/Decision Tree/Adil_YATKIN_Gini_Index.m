% This function calculates the Gini Index for a given groups and classes

function gini = Gini_Index(left, right, classes)

gini = 0;

L_left = size(left,1);

L_right = size(right,1);

score = 0;

if L_left~=0

    for j=1:length(classes)
        count=0;
        for k=1:L_left
            if classes(j)==left(k,3)
                count = count + 1;
            end
        end
    
        p = count/L_left;
      
        score = score + p*p;
    
    end

    gini = gini + (1.0 - score) * ( L_left/ (L_left + L_right));
end

score = 0;

if L_right~=0

    for j=1:length(classes)
        count=0;
        for k=1:L_right
            if classes(j)==right(k,3)
                count = count + 1;
            end
        end

        p = count/L_right;
     
        score = score + p*p;
    end


    gini = gini + (1.0 - score) * ( L_right/ (L_left + L_right));
end

gini = gini;



