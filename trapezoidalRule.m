function trapezoidalRule(expression, lowerBound, upperBound, iterations)    
    syms x
    a = lowerBound;
    b = upperBound;
    y = expression;
    N = iterations;
    dx = (b-a)/N;    
    T = vpa(subs(y, x, a)) + vpa(subs(y, x, b));
    
    for n = 1:N-1
        T = T + 2*vpa(subs(y, x, a + n*dx));
    end
    
    T = (dx/2)*T;
    
    disp(T)
end

