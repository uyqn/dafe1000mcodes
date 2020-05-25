function [r, s] = newtonWithPrecision(expression, x0, decimalPlaces)
    syms x;
    f = expression;
    x_n = x0;
    x_new = x_n;
    x_old = 0;
    n = 0;
    
    precision = 0.5*10^(-decimalPlaces);
    
    disp("Derivative: ");
    disp(diff(f));
    
    disp(" ");
    disp("Newton's method iterations: ");
    while abs(x_new-x_old) > precision
        x_old = x_n;
        x_n = x_n - vpa(subs(f, x, x_n))/vpa(subs(diff(f),x,x_n));
        x_new = x_n;
        n = n + 1;
       
        disp(x_n);
    end
    r = n-1;
    s = x_n;
end

