function plotCalculus
    n = 1000;
    x = linspace(-5,5,100);
    y1 = arrayfun(@func,x);
    y2 = arrayfun(@calcDerivative,x);
    
    function y = calcDerivative(x)
        y = (func(x + 1/n) - func(x))*n;
    end
    y3 = arrayfun(@calcPrimitive,x);
    
    function y = calcPrimitive(x)
        y = 0;
        for k = 0:n
            y = y + func(x*k/n)*x/n;
        end
    end
    figure;
    plot(x,y1,'y',x,y2,'g',x,y3,'r');
    legend('function','derivative','primitive');
    whitebg('black');
    grid on;
    grid minor;
end

function y = func(x)
    y = exp(-x^2);
end
