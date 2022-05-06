clc, clear
samples = 100;
people = 365;
i = zeros(samples, people);
for Nx = 1:people
    for Ny = 1:samples
        a = randi(365,1,k);
        i(Ny, Nx) = findmatch(a);
    end
end
m = mean(i,1);
y = m(2:people);
x = 1:1:364;

figure(1)

y2 = 1-exp(-(x.^2)/730);
plot(x,y,x,y2)