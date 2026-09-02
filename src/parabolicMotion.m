function y = parabolicMotion(H, beta, H_precedenti, theta)
    if(theta/beta<0.5)
        y = H_precedenti + 2*H*(theta/beta)^2;
    else 
        y = H_precedenti + H*(1 -2*(1-(theta/beta))^2);
end
end