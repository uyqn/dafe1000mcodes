function simpson = simpsonMethod(expression, lowerBound, upperBound, iterations)
    
    syms x
    a = lowerBound;
    b = upperBound;
    y = expression;
    N = iterations;
    dx = (b-a)/N;    
    sigma = vpa(subs(y, x, a)) + vpa(subs(y, x, b));
    
    for n = 1:N-1
        if(mod(n, 2) == 1)
            sigma = sigma + 4*vpa(subs(y, x, a + n*dx));
        else
            sigma = sigma + 2*vpa(subs(y, x, a + n*dx));
        end
    end
    
    simpson = (dx/3)*sigma;

end

