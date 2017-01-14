function [t,miles] = light_speed(dist)
conv_factor = (1/1.609);
miles = dist*conv_factor;
t = dist./(300000*60);
end