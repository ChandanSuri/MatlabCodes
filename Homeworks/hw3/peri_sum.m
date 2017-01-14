function s = peri_sum(A)
s = sum(A(1,:)) + sum(A(end,:)) + sum(A(2:end-1,1)) + sum(A(2:end-1,end));
end
