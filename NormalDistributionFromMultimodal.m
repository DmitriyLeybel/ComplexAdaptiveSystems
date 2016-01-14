clear;
nn = 1;
ff = [];
for nn = 1:nn
    x = [randn(1,400)*.1+.3, randn(1,400)*.1+.7, randn(1,400)*.1+.4, randn(1,400)*.1+.3, randn(1,400)*.1+.8];
    for n = 1:2000
        if x(n) < 0
            x(n) = 0;
        end
        if x(n) > 1
            x(n) = 1;
        end
    end
    y = x(randperm(length(x)));
    ff = [ff;y];
%    ff = mean(ff)
end
subplot(1,3,1);
hist(ff);
title('n = 1');
clear;
nn = 2;
ff = [];
for nn = 1:nn
    x = [randn(1,400)*.1+.3, randn(1,400)*.1+.7, randn(1,400)*.1+.4, randn(1,400)*.1+.3, randn(1,400)*.1+.8];
    for n = 1:2000
        if x(n) < 0
            x(n) = 0;
        end
        if x(n) > 1
            x(n) = 1;
        end
    end
    y = x(randperm(length(x)));
    ff = [ff;y];
end
ff = mean(ff);
subplot(1,3,2);
hist(ff)
title('n=2');
clear;
nn = 30;
ff = [];
for nn = 1:nn
    x = [randn(1,400)*.1+.3, randn(1,400)*.1+.7, randn(1,400)*.1+.4, randn(1,400)*.1+.3, randn(1,400)*.1+.8];
    for n = 1:2000
        if x(n) < 0
            x(n) = 0;
        end
        if x(n) > 1
            x(n) = 1;
        end
    end
    y = x(randperm(length(x)));
    ff = [ff;y];
end
ff = mean(ff);
subplot(1,3,3)
hist(ff)
title('n = 30')
        

