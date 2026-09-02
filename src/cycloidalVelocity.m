function v = cycloidalVelocity(H, beta, theta);
    v =  H/(deg2rad(beta))*(1-cos(2*pi*theta/beta));
end