function y = polynomialMotion(H, beta, H_precedenti, theta)
    y = H_precedenti + H*(10*(theta/beta)^3 - 15*(theta/beta)^4 + 6*(theta/beta)^5);
end