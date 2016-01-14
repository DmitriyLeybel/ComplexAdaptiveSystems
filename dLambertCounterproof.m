hh = 0;
for n = [1:10000]
    f1 = round(rand());
    if f1 == 1
        f2 = round(rand());
        if f2 == 1
            hh = hh+1;
        end
    end
    
end

proportion_of_heads_heads = hh/10000
