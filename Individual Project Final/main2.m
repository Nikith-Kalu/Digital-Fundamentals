tally = zeros(1, 365);
N = 1000;
k1 = 365;
for k = 2:k1
    for m = 1:N
        rdie = get_k_random_days(k);
        for i = 1:length(rdie)
        b = rdie(i);
        ind = find(rdie == b);
            if length(ind) > 1
                tally(k) = tally(k) + 1;
                break
end
end
end
end
probability = tally/N;
x = 2:k1;
y = probability;
L = min(length(x), length(y));
plot(x(1:L), y(1:L))
xlabel('Number of people')
ylabel('Probability')