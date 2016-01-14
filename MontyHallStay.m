clear;
w = 0;
trials = 10000
for x = [1:trials]
    d = [0 0 1];
    y = ceil(rand*3);
    
    
    if d(y) == 1
        w = w + 1;
    end
end
'Percentage of wins if you stay:', disp(w/trials * 100)