% Fisher score implementation for Jth class labelled dataset

function scores = Fisher_Score_Compute(X)

scores = [];

num_features = size(X,2) -1;

label = transpose(X(:,end) + 1);

label_classes = unique(label);

num_classes = size(label_classes,2);

for i=1:num_features
    inter_class = 0;
    intra_class = 0;
    feature = transpose(X(:,i:i));
    mu = mean(feature);


    for j=1:num_classes
        n_ = sum(label == label_classes(j));
        mu_ = mean(feature(label == label_classes(j)));
        var_ = var(feature(label == label_classes(j)));
        
        inter_class = inter_class + n_*(mu_-mu)^2 ;
        intra_class = intra_class + (n_-1)*var_ ;

    end
    score = inter_class / intra_class;
    scores = [scores score];
end

scores = scores;