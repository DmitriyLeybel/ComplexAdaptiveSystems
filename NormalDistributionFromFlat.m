clear;
nn = 1;
ff = [];
for n = 1:nn
    x = rand(1,2000);
    ff = [ff;x];
end
% ff = mean(ff);
subplot(1,3,1);
hist(ff);
title('n = 1')

clear;
nn = 2;
ff = [];
for n = 1:nn
    x = rand(1,2000);
    ff = [ff;x];
end
ff = mean(ff);
subplot(1,3,2);
hist(ff);
title('n = 2')

clear;
nn = 30;
ff = [];
for n = 1:nn
    x = rand(1,2000);
    ff = [ff;x];
end
ff = mean(ff);
subplot(1,3,3);
hist(ff);
title('n = 30')


    