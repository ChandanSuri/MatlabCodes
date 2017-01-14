function f = fare(dist, age)
dist = round(dist);
if dist<=1
    f = 2;
elseif dist>1 && dist<=10
    f = 2 + (dist-1)*0.25;
else
    f = 2 + 9*0.25 + (dist-10)*0.10;
end

if age<=18 || age>=60
    f = f*0.8;
end
