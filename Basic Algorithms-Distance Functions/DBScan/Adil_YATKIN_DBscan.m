% DBSCAN algorithm implementation
function labels = DBscan(X, eps, MinPts)

L = length(X);

%initial list 
labels = [];
for i=1:L
    labels = [labels 0];
end

%initial cluster
C = 0;

for P=1:L

    Neighboors = NghPoints(X, P, eps);

    if length(Neighboors)<MinPts

        labels(P) = -1;

    else
        C = C + 1;

        labels(P) = C;

        for i=1:length(Neighboors)

            Pn = Neighboors(i);

            if labels(Pn) == -1

                labels(Pn) = C;

            elseif labels(Pn) == 0

                labels(Pn) = C;

                PnNeighboors = NghPoints(X, Pn, eps);

                if length(PnNeighboors) >= MinPts
                    Neighboors = [Neighboors PnNeighboors];
                end
            end
        end
    end
end

labels = labels