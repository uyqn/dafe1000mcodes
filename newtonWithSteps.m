function newtonWithSteps(expression, iterations, initialvalue)
    syms x;
    f = expression;
    N = iterations;
    x_n = initialvalue;
    
    disp("Derivative: ");
    disp(diff(f));
    
    disp(" ");
    disp("Newton's method iterations: ");
    for n = 1:N
        x_n = x_n - vpa(subs(f, x, x_n))/vpa(subs(diff(f),x,x_n));
        disp("x_" + n + " = ");
        disp(x_n);
    end
end

