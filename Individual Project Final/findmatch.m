function bmatch = findmatch(a)
bmatch = 0;
N = length(a);

for x = 2:N-1
    for y = x + 1:N
        
        if a(x) == a(y)
            bmatch = 1;
            
            break;
        end
    end
end
end