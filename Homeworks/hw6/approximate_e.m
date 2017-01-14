function [app,k] = approximate_e(delta)
exact_val = exp(1);
k = 0;
app = 1;
while exact_val-app > delta
    k = k + 1;
    fact = 1;
    for i=1:k
        fact = fact*i;
    end
    app = app + 1/fact;
end
end
