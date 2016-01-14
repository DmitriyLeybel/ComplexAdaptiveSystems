clear;
epoch = 0;
mse = 10000;
Lrate = .2;
mom = .9;
W1chmom = 0;
W2chmom = 0;
Input = [0,0;1,0;0,1;1,1];
Target = [0;1;1;0];
W1 = rand(2,2)*2-1;
W2 = rand(2,1) * 2-1;
biasout= rand*2-1;
biashid = rand(1,2)*2-1;
biashidchmom= 0;
biasoutchmom= 0;

while mse > .01
    epoch = epoch + 1;
    errs = [];
    if epoch == 100000,
        break
    end
    for n = 1:4
        in = Input(n,:);
        Targ = Target(n, :);
        Ha = in * W1; %hid
        Ha = logsig(Ha);
        Oa = Ha * W2; %out
        Oa = logsig(Oa); %out
        SES = (Targ - Oa)^2;%mse
        errs = [errs, SES];
        Error = Targ - Oa;
        deltaout =  Error.*(Oa.*(1-Oa)); %deltaout
        deltahid = (deltaout*W2').*(Ha.*(1-Ha));
        W2ch = Lrate*(Ha'*deltaout);
        W1ch = Lrate* (in'*deltahid);
        biasoutch=Lrate*deltaout;
        biashidch=Lrate*deltahid;
        W1 = W1+W1ch +(W1chmom*mom);
        W2 = W2+W2ch + (W2chmom*mom);
        biasout=biasout+biasoutch+(biasoutchmom*mom);
        biashid=biashid+biashidch+(biashidchmom*mom);
        W1chmom=W1ch+(W1chmom*mom);
        W2chmom=W2ch+ (W2chmom*mom);
        biasoutchmom=biasoutch + (biasoutchmom*mom);
        biashidchmom=biashidchmom + (biashidchmom*mom);
    end
    mse(epoch) = mean(errs);
end
plot(mse);

        
