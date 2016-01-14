clear;
m = [];
for h = 1:4000
    x = 0;
    y = rand;
    for t = 1:1000
        ha = h * .001;
        y = ha*y*(1-y);
        if t > 960
            x = x + 1;
            m(h,x) = y;
        end
    end
end
plot([.001:.001:4],m, '.k', 'MarkerSize', 1);
            
        