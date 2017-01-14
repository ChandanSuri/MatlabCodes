function indexes = small_elements(X)
[row,col] = size(X);
indexes = [];
for i=1:col
    for j=1:row
        if X(j,i) < (i*j)
            indexes = [indexes;j i];
        end
    end
end
end
