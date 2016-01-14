m = rand(8,4)*10-5;
s = [];
for num = [1:10]
    n = randn(1,8)*m;
    s = [s;n]
end 
mesh(s)