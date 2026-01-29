clc
clear 

% menggambar
% [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);
% Z = sin(X) + cos(Y);
% contour3(Z);

% x = rand(1, 100);
% y = rand(1, 100);
% scatter(x, y);

% x = [1 2 3 4 5 6 7 8 9 10];
% x = [-1:0.1:1];
% y = x.^2;
% plot(x,y)

% equal maxima
% x = [0:0.001:1];
% y = (sin(5*pi*x)).^6;
% plot(x,y,'-b')

% decreasing
% x = [0:0.001:1];
% y = (exp(-2*log(2)*((x-0.1)/0.8).^2).*sin(5*pi*x)).^6;
% plot(x,y,'-b')

% second minima 
% x = [-4:0.1:4];
% y = [-4:0.1:4];
% [x,y]=meshgrid(x,y);
% f = (0.5*(x.^4-16*x.^2+5*x)+0.5*(y.^4-16*y.^2+5*y));
% axis=([-4 4 -4 4]);
% figure(1)
% contour (x,y,f);
% figure(2)
% contour3(x,y,f)
% figure (3)
% surfc(x,y,f)
% figure (4)
% meshc(x,y,f)
% title('second minima')
% xlabel 
% ylabel

% x = [-1.9:0.1:1.9];
% y = [-1.1:0.1:1.1];
% [x,y]=meshgrid(x,y);
% f = (4-2.1*x.^2+x.^4/3).*x.^2+x.*y+4*(-1+y.^2).*y.^2;
% figure(1)
% % contour (x,y,f);
% contour3 (x,y,f);
% figure (2)
% surfc(x,y,f)
% figure (3)
% meshc(x,y,f)
% % title('second minima')
% xlabel ('x')
% ylabel ('y')
% zlabel ('f(x)')

x = [-10:0.1:10];
y = [-10:0.1:10];
[x,y]=meshgrid(x,y);
f = sin(x).*exp((1-cos(y)).^2)+cos(y).*exp((1-sin(x)).^2)+(x-y).^2;
axis=([-10 10 -10 10]);
% contour (x,y,f);
% hold on
figure(1)
contour3 (x,y,f);
figure (2)
surfc(x,y,f)
figure (3)
meshc(x,y,f)
% title('fungsi second minima')
xlabel ('x')
ylabel ('y')
zlabel ('f(x)')