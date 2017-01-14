function s = sum3and5muls(n)
sum3muls = (3:3:n);
sum5muls = (5:5:n);
s = sum(union(sum3muls,sum5muls));
end
