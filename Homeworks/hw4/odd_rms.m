function orms = odd_rms(nn)
M = 1:2:2*nn-1;
orms = sqrt(mean(M.^2));
end
