clear;
allmaxnet = zeros(10,50);
for run = 1:10
    x = 0;
    cells = 100;
    for edges = 5:5:250
        x = x+1;
        m = zeros(cells,cells);
        while sum(m(:)) < edges
            i = round(1+(99-1)*rand);
            j = round(i+(100-i)*rand);
            m(i,j) = 1;
        end
    

        m = m + m';
        for n = 1:cells
            cellacts = zeros(1,cells);
            cellacts(n) = 1;
            for t = 1:cells
                cellacts = cellacts * m + cellacts;
            end
            netsize(n) = nnz(cellacts);
        end
        maxnet(x)= max(netsize);
    end
    allmaxnet(run,:) = maxnet;
end
plot([.05:.05:2.5],mean(allmaxnet));



            
                
    