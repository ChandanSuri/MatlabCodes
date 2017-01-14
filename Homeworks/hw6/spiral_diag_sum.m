function s = spiral_diag_sum(n)
s = 1;
if n==1
    return;
end
inc = 2;
count = 0;
i=3;
while i<=n*n
    s = s + i;
    count = count + 1;
    if count==4
        inc = inc + 2;
        count = 0;
    end
    i = i + inc;
end
end

        