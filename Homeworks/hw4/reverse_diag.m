function mat = reverse_diag(n)
mat = zeros(n);
mat(n:max([1, n-1]):max([n,n^2-1])) = 1;
end
