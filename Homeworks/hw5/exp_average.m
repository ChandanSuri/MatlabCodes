function o = exp_average(in,B)
persistent out;
persistent b;
if isempty(out)
    out = in;
    b = 0.1;
end
if nargin==2
    out = in;
    b = B;
end
out = in*b + (1-b)*out;
o = out;
end

