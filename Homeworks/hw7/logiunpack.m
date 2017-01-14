function M = logiunpack(A)
n = size(A);
for i = 1:n(2)
    row = A{i};
    if isempty(row)
        M(i,1:n(2)) = false;
    else
        M(i,1:n(2)) = false;
        M(i,row) = true;
    end
end
end
