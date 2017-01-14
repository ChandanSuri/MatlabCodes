function num_days = day_counter(years)
num_days = 0;
for year = years
mon = nweekdate(1,2,year,1:12);
str_wd = datestr(mon);
wd_mon = 0;
for i=1:12
    day = str_wd(i,:);
    d_date = day(1:2);
    if strcmp(d_date,'01')==0
        continue;
    else
       wd_mon = wd_mon + 1;
    end
end
num_days = num_days + wd_mon;
end
end
