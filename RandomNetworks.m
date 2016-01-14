clear;
rng('shuffle');
nodes = rand(1,100);
weights = 1.2*randn(100,100);

for preT = 1:500
    nodes = nodes*weights + nodes;
    nodes = 1./(1+exp(-nodes));
end
for t = 1:500
    nodes = nodes*weights + nodes;
    nodes = 1./(1+exp(-nodes));
    nodetime(t,:) = nodes;
end
rp = randperm(100,50);
com1 = nodetime(:,rp);
com1 = mean(com1, 2);
rp2 = [];
for x = 1:100
    p = find(rp == x);
    if isempty(p)
        rp2 = [rp2, x];
    end
end
com2 = nodetime(:,rp2);
com2 = mean(com2,2);
twocom1 = [];
for n = 1:2:500
    twocom1 = [twocom1;mean([com1(n), com1(n+1)])];
end
twocom2 = [];
for n = 1:2:500
    twocom2 = [twocom2;mean([com2(n), com2(n+1)])];
end
threecom1 = [];
for n = 1:3:498
    threecom1 = [threecom1;mean([com1(n), com1(n+1),com1(n+2)])];
end
threecom2 = [];
for n = 1:3:498
    threecom2 = [threecom2;mean([com2(n), com2(n+1),com2(n+2)])];
end
fourcom1 = [];
for n = 1:4:500
    fourcom1 = [fourcom1;mean([com1(n), com1(n+1),com1(n+2),com1(n+3)])];
end
fourcom2 = [];
for n = 1:4:500
    fourcom2 = [fourcom2;mean([com2(n), com2(n+1),com2(n+2),com2(n+3)])];
end

subplot(2,2,1)
plot(com1(size(com1)-24:end),com2(size(com2)-24:end));
title('com1 x com2')
subplot(2,2,2)
plot(twocom1(size(twocom1)-24:end),twocom2(size(twocom2)-24:end));
title('twocom1 x twocom2')
subplot(2,2,3)
plot(threecom1(size(threecom1)-24:end),threecom2(size(threecom2)-24:end));
title('threecom1 x threecom2')
subplot(2,2,4)
plot(fourcom1(size(fourcom1)-24:end),fourcom2(size(fourcom2)-24:end));
title('fourcom1 x fourcom2')