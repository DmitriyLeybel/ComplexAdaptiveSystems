clear;
w = 0;
trials = 10000;
for x = [1:trials]
    d = [0 0 1];
    y = ceil(rand*3);
    d(y) = [];
    z = find(d == 0);
    d(z(1)) = [];
    y = 1;
    if d(y) == 1
        w = w + 1;
    end
end
'Percentage of wins if you switch:', disp(w/trials * 100)