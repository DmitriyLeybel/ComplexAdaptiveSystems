clear;
epochs = 0;
Inputs = eye(4);
Targets = [1,0;1,0;0,1;0,1];
W = rand(4,2)*2-1;
mse = 100000;
Lrate = .1;
Nepoch = [];
while mse > .05
    epochs = epochs +1;
    errs = [];
    for n = 1:4
        In = Inputs(n,:);
        Targ = Targets(n,:);
        Out = In*W;
        Err = Targ - Out;
        errs = [errs, mean(Err.^2)];
        delta = Lrate*(In'*Err);
        W = W + delta;
    end
    mse = mean(errs)
    Nepoch(epochs) = mse;
    
end

'Amount of epochs: ', length(Nepoch)
plot([1:length(Nepoch)], Nepoch)
title('Epoch vs MSE');


        
        


