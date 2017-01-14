function T = pendulum(L,a0)
theta = a0;
g = 9.8;
del_t = 1e-6;
total_time = 0;
omega = 0;
if L==0
    T = 0;
    return;
end
while theta>0
    alpha = -g*sin(theta)/L;
    omega = omega + alpha*del_t;
    theta = theta + omega*del_t;
    total_time = total_time + del_t;
end
T = total_time*4;
end
