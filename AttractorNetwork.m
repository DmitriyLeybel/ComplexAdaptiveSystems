m = rand(1,6);
n = m/sum(m);
s = [n];
 while max(n)<.95
     n = (n-.01)/sum(n);
     
     s = [s; n];
 end
 
 plot(s)