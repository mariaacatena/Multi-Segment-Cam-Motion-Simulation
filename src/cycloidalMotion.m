function y = cycloidalMotion(H, beta, H_precedenti, theta)
    y = H_precedenti + H*((theta/beta)-(1/(2*pi))*sin(2*pi*theta/beta));
end