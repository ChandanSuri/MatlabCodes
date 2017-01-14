function Q = intquad(n,m)
tl = zeros(n,m);
tr = ones(n,m);
bl = 2*ones(n,m);
br = 3*ones(n,m);
Q = [tl tr;bl br];
end
