function [x, y, z] = sort3(Mat)
if Mat(1)<=Mat(2)
    if Mat(1)<=Mat(3)
        x = Mat(1);
        if Mat(2)<=Mat(3)
            y = Mat(2);
            z = Mat(3);
        else
            y = Mat(3);
            z = Mat(2);
        end
    else
        x = Mat(3);
        y = Mat(1);
        z = Mat(2);
    end
else
    if Mat(1)>=Mat(3)
        z = Mat(1);
        if Mat(2)>=Mat(3)
            y = Mat(2);
            x = Mat(3);
        else
            y = Mat(3);
            x = Mat(2);
        end
    else
        z = Mat(3);
        y = Mat(1);
        x = Mat(2);
    end
end
end
