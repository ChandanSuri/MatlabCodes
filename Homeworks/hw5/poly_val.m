function p = poly_val(c0,c,x)
[m,n] = size(c);
if isempty(c)
    p = c0;
elseif isscalar(c)
    p = c0 + c*x;
else
    if max(m,n) == m
        po = x.^(1:m);
        cn = c'.*po;
    else
        po = x.^(1:n);
        cn = c.*po;
    end
    p = c0 + sum(cn);
end
end
