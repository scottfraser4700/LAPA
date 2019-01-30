nx = 10;
ny = 10;
V = zeros(nx,ny);
Niterations = 50;
n = 0;

while n < Niterations
    V(1,:) = 0;
    V(nx,:) = 1;
    for i = 2:nx-1
        for j = 1:ny
            if j == ny
                V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j-1)) * 0.33;
            elseif j == 1
                V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j+1)) * 0.33;
            else
                V(i,j) = (V(i+1,j) + V(i-1,j) + V(i,j+1) + V(i,j-1)) * 0.25;
            end
        end
    end
    figure(1)
    E = -1*gradient(V);
    %surf(E)
    %quiver(V,E)
    %B = imboxfilt(V);
    %surf(B)
    n = n+1;
    surf(V.')
    pause(0.1)
end

