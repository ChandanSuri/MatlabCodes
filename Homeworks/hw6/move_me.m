function w = move_me(v,a)
if nargin==1
    a = 0;
end
len1 = size(v,2);
w = v(v~=a);
len2 = size(w,2);
for i = 1:len1-len2
    w = [w a];
end
end
