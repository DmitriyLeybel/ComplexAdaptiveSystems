clear;
n = 23;

pfail = 1;
for i = n-1:-1:1
    p=i/365;
    pfail = (1-p) * pfail;
    
end
'Probability of failure:', disp(pfail)

'Probability of success:', disp(1-pfail)

    
    
    

