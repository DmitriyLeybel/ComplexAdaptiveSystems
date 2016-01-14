clear;
clf;

Mandelbrot = zeros(300,200);

for Real = -2:.01:1
    for Imag = -1:.01:1
        z = 0;
        zs = 0;
        for n = 1:100
            z = (z^2) + (Real + complex(0,Imag));
            zs(n) = z;
        end
        if length(zs(zs >2)) == 0
            Imagi = round(((Imag + 1)*100)+1);
            Reali = round(((Real + 2)*100)+1);
            Mandelbrot(Reali,Imagi) = 1;
        end
    end
end
colormap([1,1,1;0,0,0]);
image([-2:.01:1], [1:-.01:-1],Mandelbrot'*2);

    
            