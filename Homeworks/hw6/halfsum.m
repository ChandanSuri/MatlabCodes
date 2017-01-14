function s = halfsum(A)
[row,col] = size(A);
s = 0;
for i=row:-1:1
    s = s + sum(A(i,row-i+1:col));
end
