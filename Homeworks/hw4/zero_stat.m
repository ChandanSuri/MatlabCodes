function per = zero_stat(M)
total = sum(sum(M));
[m,n] = size(M);
per = ((m*n-total)/(m*n))*100;
end
