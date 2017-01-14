function A = logipack(M)
n = size(M);
A = cell(1,n(1));
for i=1:n(1)
    row = M(i,:);
    col_list = [];
    for j = 1:n(1)
        if row(1,j)== 1
            col_list = [col_list j];
        end
    end
    A{i} = col_list;
end
end
