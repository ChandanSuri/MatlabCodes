function [a, s] = myRand2(low, high)
a = low + rand(3,4)*(high-low);
s = sumAllElements(a);

%Making Subfunctions and Global Variables..
function summa = sumAllElements(M)
global v;
v = M(:);
summa = sum(v);
