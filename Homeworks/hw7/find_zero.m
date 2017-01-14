function x = find_zero(f,x1,x2)
x = (x1 + x2)/2;
y = f(x);
while abs(y) >= 1e-10
    if f(x1)*f(x)<0
        x2 = x;
    else
        x1 = x;
    end
    x = (x1 + x2)/2;
    y = f(x);
end
end
