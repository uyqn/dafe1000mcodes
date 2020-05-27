hold off
%Differensiallikning:
F = @(x, y) -0.1*(y - 15 + 3*cos((pi/12)*x - 1));

%Initial betingelse:
x0 = 0;
y0 = 17;

%Iterer over intervallet:
I = [0, 24];

%Steglengde
h = 0.5;

%Magic:
xn = x0;
yn = y0;

hold on
while xn < max(I)
    plot(xn, yn, "ro")
    axis([x0 max(I) 12 18])
    xn = xn + h;
    yn = yn + h*F(xn, yn);
    pause(0.1)
end
hold off