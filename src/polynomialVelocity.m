function v = polynomialVelocity(H, beta, theta);
    v = H/(deg2rad(beta))*(30*(theta/beta)^2 - 60*(theta/beta)^3 + 30*(theta/beta)^4 );
end