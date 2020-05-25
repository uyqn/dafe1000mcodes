function diff = midpointDFromTable(xValues, fValues, xPoint)
    xLower = find(xValues < xPoint);
    xUpper = find(xValues > xPoint);
    
    lower = max(xLower);
    upper = min(xUpper);
    
    hLower = xPoint - xValues(lower);
    hUpper = xValues(upper)-xPoint;
    
    if ~(hLower == hUpper)
        disp("The requested point is invalid because: ")
        disp("from " + xPoint +  " to " + xValues(lower) + " is " + hLower);
        disp("from " + xPoint +  " to " + xValues(upper) + " is " + hUpper);
    else
        h = hUpper;
        diff = (fValues(upper) - fValues(lower))/(2*h);
    end
end

