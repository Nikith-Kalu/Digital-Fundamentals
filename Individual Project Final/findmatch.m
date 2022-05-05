function bmatch = findmatch(data)
bmatch = 0;

for i = 2:length(data) - 1
    for k = i + 1:length(data)
        if data(k) ==  data(i)
            bmatch = 1;
        end
    end
end