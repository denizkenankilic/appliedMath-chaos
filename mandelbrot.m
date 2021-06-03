function mandelbrot(n,iter)
%n is number of points that are generated between x0-x1 and y0-y1
%iter is the iteration number
%nxn grid of points

x0 = -2.25;   x1 = 1.75;
y0 = -1.5; y1 = 1.5;
% linspace(X1, X2, N) generates N points between X1 and X2.
[x,y] = meshgrid(linspace(x0, x1,n), linspace(y0, y1,n)); % grid of complex points

c = x + 1i * y;
z = zeros(size(c));
k = zeros(size(c));

for ii = 1:iter
    z   = z.*z + c;
    k(abs(z) > 2 & k == 0) = iter - ii;
end

figure,
imagesc(k),
colormap hot
axis on