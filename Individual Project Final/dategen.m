function dates = dategen(N)
n = 100;
dates = zeros(N,1);
for d = 1:1:N
    dates(d,1) = randi(365);
end
end