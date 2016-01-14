ff = [];
c = [0];
x = round(rand(1,10000));
for i = [5:9999]
   if x(i-4)==1 & x(i-3) == 1 & x(i-2) == 1 & x(i-1) == 1
       ff = [ff, x(i)];
   end
end

Ammt_of_Tails = (1-mean(ff))*length(ff) 

if mean(ff) < .5;
    'More than half are tails'
else
    'Less than half are tails'
    
end
    