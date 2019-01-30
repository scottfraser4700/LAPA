nx = 10;
ny = 10;
V = zeros(nx,ny);
Niterations = 50;
n = 0;

while n < Niterations
    V(1,:) = 1;
    V(nx,:) = 1;
    V(:,1) = 0;
    V(:,ny) = 0;
    for i = 2:nx-1
        for j = 2:ny -1
            
           V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j+1) + V(i,j-1)) * 0.25;
            
        end
    end
    n = n+1;
    figure(2)
    surf(V.')
    pause(0.1)
end