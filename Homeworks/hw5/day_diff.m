function diff = day_diff(month1,day1,month2,day2)
days = [31 28 31 30 31 30 31 31 30 31 30 31];
if ~isscalar(month1) || ~isscalar(month2)
    fprintf('The Month should be a scalar value.\n');
    diff = -1;
    return;
elseif (month1>12 || month1<1) || (month2<1 || month2>12)
    fprintf('The Month should be in the range 1 to 12.\n');
    diff = -1;
    return;
elseif month1 ~= fix(month1) || month2 ~= fix(month2)
    fprintf('The Month should be a positive integer.\n');
    diff = -1;
    return;
elseif ~isscalar(day1) || ~isscalar(day2)
    fprintf('The Day should be a scalar value.\n');
    diff = -1;
    return;
elseif day1<1 || day1>days(month1) || day2<1 || day2>days(month2)
    fprintf('Please enter a valid date in a month.\n');
    diff = -1;
    return;
elseif day1 ~= fix(day1) || day2 ~=fix(day2)
    fprintf('The Day should be a positive integer.\n');
    diff = -1;
    return;
end

daystill1 = day1 + sum(days(1:month1-1));
daystill2 = day2 + sum(days(1:month2-1));
diff = abs(daystill2 - daystill1);
end
