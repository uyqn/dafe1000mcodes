function eulersMethod(dy, dx, x0, y0, iterations)
    
    syms x y
    F = dy;
    x_n = x0;
    y_n = y0;
    
    for n = 1:iterations
        y_n = vpa(subs(F, [x, y], [x_n, y_n]))*dx + y_n;
        x_n = x_n + dx;
        disp(y_n);
    end
end

