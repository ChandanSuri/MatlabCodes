function n = palin_product(dig, lim)
seq = 10^(dig-1):(10^dig)-1;
largest_palin = 0;
for i = seq
    for j = seq
        if i*j<lim
            if(check_palin(i*j) && (i*j)>largest_palin)
                largest_palin = i*j;
            end
        end
    end
end
n = largest_palin;
end

function b = check_palin(num)
nstr = num2str(num);
if nstr==fliplr(nstr)
    b = true;
else
    b = false;
end
end