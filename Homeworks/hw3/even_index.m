function everc = even_index(M)
[m,n] = size(M);
everc = M(2:2:m,2:2:n);
end
