clc, clear
range = [1,365];
rend = 500;
ppl = 30;
bdays = randi(range, ppl, rend);
rpt = 0;
for r = 1:rend
    flag = false;
    for b1 = 1:ppl
        for b2 = b1+1:ppl
            if bdays(b1,r) == bdays(b2,r)
                rpt = rpt + 1;
                flag = true;
                break
            end
        end
        if flag == true
            break
        end
    end
end
p = rpt/rend;

plot(rpt, p)