nn = 1;
ff = [];
for n = [1:nn]
    x = rand(1,2000);
    y = rand(1,2000);
    z = rand(1,2000);
    f = [x;y;z];
    m = mean(f);
    for d = [1:length(m)]
        if m(d) <= .5
            m(d) = m(d) + .5;
        else
            m(d) = m(d) -.5;
        end
    end
    m = m(randperm(length(m)));
	ff = [ff; m];
end
subplot(1,3,1);
hist(m);
title('n = 1')
clear;
nn = 2;
ff = [];
for n = [1:nn]
    x = rand(1,2000);
    y = rand(1,2000);
    z = rand(1,2000);
    f = [x;y;z];
    m = mean(f);
    for d = [1:length(m)]
        if m(d) <= .5
            m(d) = m(d) + .5;
        else
            m(d) = m(d) -.5;
        end
    end
    m = m(randperm(length(m)));
	ff = [ff; m];
end
subplot(1,3,2);
hist(mean(ff));
title('n = 2')
clear;
nn = 30;
ff = [];
for n = [1:nn]
    x = rand(1,2000);
    y = rand(1,2000);
    z = rand(1,2000);
    f = [x;y;z];
    m = mean(f);
    for d = [1:length(m)]
        if m(d) <= .5
            m(d) = m(d) + .5;
        else
            m(d) = m(d) -.5;
        end
    end
    m = m(randperm(length(m)));
	ff = [ff; m];
end
subplot(1,3,3);
hist(mean(ff));
title('n = 30')