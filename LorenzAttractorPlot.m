clear;

sigma = 10;
beta = 8/3;
p = 28;
x = rand*20-10;
y = rand*20-10;
z = rand*20-10;

for t = 1:5000
    dx = sigma*(y-x)*.01;
    dy = (x*(p-z)-y)*.01;
    dz = (x*y-(beta)*z)*.01;
    x = x + dx;
    y = y + dy;
    z = z + dz;
    allx(t) = x;
    ally(t) = y;
    allz(t) = z;
end
plot3(allx,ally,allz);

    
