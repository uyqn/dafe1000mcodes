function newtonWithSteps(expression, x0, iterations)
    syms x;
    f = expression;
    N = iterations;
    x_n = x0;
    
    disp("Derivative: ");
    pretty(diff(f));
    
    disp(" ");
    disp("Newton's method iterations: ");
    for n = 1:N
        x_n = x_n - vpa(subs(f, x, x_n))/vpa(subs(diff(f),x,x_n));
        disp("x_" + n + " = ");
        disp(x_n);
    end
end

