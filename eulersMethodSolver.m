function [m,s] = eulersMethodSolver(dy, dx, x0, y0, solveForY)

    syms x y
    F = dy;
    x_n = x0;
    y_n = y0;
    
    while y_n > solveForY
        y_n = vpa(subs(F, [x, y], [x_n, y_n]))*dx + y_n;
        x_n = x_n + dx;
    end
    
    m = x_n;
    s = y_n;
    
end

