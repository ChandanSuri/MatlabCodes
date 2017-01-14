function added = huge_add(num1,num2)
if ~ischar(num1) || ~ischar(num2)
    added = -1;
    return;
end
s = max(size(num1),size(num2));
num1 = sprintf('%0*s',s(2),num1);
num2 = sprintf('%0*s',s(2),num2);
carry = 0;
added = '';
for i = s(2):-1:1
    ch1 = num1(i);
    ch2 = num2(i);
    if ~isstrprop(ch1,'digit') || ~isstrprop(ch2,'digit')
        added = -1;
        break;
    end
    n1 = str2num(ch1);
    n2 = str2num(ch2);
    n = n1 + n2 + carry;
    if n>=10
        carry = 1;
        n = mod(n,10);
    else
        carry = 0;
    end
    added = strcat(num2str(n),added);
end
end
