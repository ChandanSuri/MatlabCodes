function [sinM,av] = sindeg(deg)
sinM = sin(deg.*(pi/180));
av = mean(mean(sinM));
end
