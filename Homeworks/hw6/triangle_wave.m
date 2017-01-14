function out = triangle_wave(n)
out = [];
for t=0:(4*pi/1000):(4*pi)
    s = 0;
    for k=0:n
        s = s + ((-1)^k)*sin((2*k + 1)*t)/(2*k+1)^2;
    end
    out = [out s];
end
end
