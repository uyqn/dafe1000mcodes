clc
clear
close all
%Differensiallikning:
%F = @(x, y) -0.1*(y - 15 + 3*cos((pi/12)*x - 1));

F = @(x,y) y;

%Initial betingelse:
x0 = 0;
y0 = 1;

%Iterer over intervallet:
I = [0, 2*pi];

%Steglengde
h = 0.2;
  
%Magic:
x_n = x0;
y_n = y0;

figure
syms x y;

fplot(exp(x))
hold on
n=0;
while x_n < max(I)
    plot(x_n, y_n, "rx")
    
    axis([x0 max(I) 0 10])
    x_n = x_n + h;
    y_n = y_n + h*F(x_n, y_n);
    n = n+1;
    disp("[x_"+n+" y_"+n+"] = ")
    disp([x_n y_n])
    drawnow
end