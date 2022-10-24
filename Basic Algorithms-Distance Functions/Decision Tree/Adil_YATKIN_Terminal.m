% Create a terminal node value

function count = Terminal(group)

L = size(group, 1);

count_0 = 0;
count_1 = 0;

for i=1:L
    if group(i,3)==0
        count_0 = count_0 + 1;
    end

    if group(i,3)==1
        count_1 = count_1 + 1;
    end
end

if count_0 > count_1
    count = 0;
else
    count = 1;
end
