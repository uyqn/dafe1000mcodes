function simpson = simpsonFromTable(xValues, fValues)

    h = xValues(2) - xValues(1);
    N = (xValues(end) - xValues(1))/h;
    sigma = fValues(1) + fValues(end);
    
    for n = 2:N
       if(mod(n, 2) == 0)
           sigma = sigma + 4*fValues(n);
       else
           sigma = sigma + 2*fValues(n);
       end
    end
    
    simpson = (h/3)*sigma;
end

