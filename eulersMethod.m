function eulersMethod(domain, dy, dx, x0, y0, iterations)
    syms x y
    F = dy;
    x_n = x0;
    y_n = y0;
    
    if(iterations > 0)
        for n = 1:iterations
            y_n = vpa(subs(F, [x, y], [x_n, y_n]))*dx + y_n;
            x_n = x_n + dx;
            disp("y_" + n + " = ")
            disp(vpa(y_n));
        end
    end
    
    
    x_n = x0;
    y_n = y0;
    
    while x_n < max(domain)
        plot(x_n, y_n, "k.")
        xlim(domain);
        hold on
        y_n = vpa(subs(F, [x, y], [x_n, y_n]))*dx + y_n;
        x_n = x_n + dx;
        pause(0.1)
    end
    hold off
end

