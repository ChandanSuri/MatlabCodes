function [max_product, index] = max_product(v,n)
if size(v,1)~=1
    v = v';
end
num_ele = size(v,2);
index = -1;
if num_ele<n
    max_product = 0;
    return;
end
max_product = v(1);
for i=1:num_ele-(n-1)
    pro = prod(v(i:(i+n-1)));
    if pro > max_product || index==-1
        max_product = pro;
        index = i;
    end
end
end
