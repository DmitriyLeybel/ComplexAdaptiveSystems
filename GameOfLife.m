clear;
n = 50;
GRIDp = [];
for z = [1:n*n]
    r = rand;
    prob = [.4,.6];
    x = sum(r >= cumsum([0, prob])) - 1;
    GRIDp(z)=x;
end
GRID = reshape(GRIDp, [n,n]);
up = [2:n];
up(n)= 1;
down = [n, [1:n-1]];
colormap(gray(2));
for i = 1:1000
    neighbors = GRID(up,up)+ GRID(down,down) + GRID(up,down) + GRID(down,up) + GRID(up,:) + GRID(down,:) + GRID(:,up) + GRID(:,down);
    GRID = neighbors == 3 | GRID & neighbors == 2;
    image(GRID*2);
    pause(.02);
end