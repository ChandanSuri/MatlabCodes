function S = simple_stats(N)
M = N';
fst = mean(M);
snd = median(M);
trd = min(M);
fth = max(M);
S = [fst' snd' trd' fth'];
end
