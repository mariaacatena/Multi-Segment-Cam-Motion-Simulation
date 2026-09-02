function v = parabolicVelocity(H, beta, theta);
if(theta/beta<0.5)
    v = 4*H/(deg2rad(beta))*(theta/beta);
else 
    v = H/(deg2rad(beta))*4*(1-(theta/beta));
end
end