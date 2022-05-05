function bmatch = findmatch(data)
bmatch = 0;
N = length(data);

for x = 2:N-1
    for y = x + 1:N
        
        if data(x) == data(y)
            bmatch = 1;
            
            break;
        end
    end
end
end