function num = digit_counter(filename)
fid = fopen(filename,'rt');
if fid<0
    num = fid;
    return;
end
num = 0;
f_line = fgets(fid);
while ischar(f_line)
    [~,n] = size(f_line);
    for i=1:n
        ch = char(f_line(1,i));
        if ch>=48 && ch<=57
            num = num+1;
        end
    end
    f_line = fgets(fid);
end
end

    