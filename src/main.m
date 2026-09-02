clear all
close all
clc

% INPUT - condition = true for manual input, condition = false for usa without input 
condition = false;
[segments n_segments] = manualSegmentInput(condition); 


% y CALCULATION FOR THE DIFFERENT SEGMENTS

H_precedenti = 0;
theta_precedenti = 0;
step = 0.01;
Theta = [];
Y = [];
Y_linee = [];
V = [];

for i = 1:n_segments
    H = segments(1, i);
    if(i>1) H_precedenti = H_precedenti + segments(1, i-1); end
    if(i>1) theta_precedenti = theta_precedenti + segments(2, i-1); end
    beta = segments(2, i);
    tipologia = segments(3,i);

    y = [];
    v = [];
    theta = 0:step:beta;
    [m n_theta] = size(theta);
    if(i>1) Y_linee = [Y_linee, Y_linee(i-1)+beta]; 
    else Y_linee = beta; end


    if(tipologia==1)
        for j=1:n_theta
            y(j) = parabolicMotion(H, beta, H_precedenti, theta(j));
            v(j) = parabolicVelocity(H, beta, theta(j));
            theta(j) = theta(j) + theta_precedenti; 
        end

    elseif(tipologia==2)
        for j=1:n_theta
            y(j) = cycloidalMotion(H, beta, H_precedenti, theta(j));
            v(j) = cycloidalVelocity(H, beta, theta(j));
            theta(j) = theta(j) + theta_precedenti;
        end

    else
        for j=1:n_theta
            y(j) = polynomialMotion(H, beta, H_precedenti, theta(j));
            v(j) = polynomialVelocity(H, beta, theta(j));
            theta(j) = theta(j) + theta_precedenti;
        end
       
    end

    Theta = [Theta, theta];
    Y = [Y y];
    V = [V v];


end

figure
plot(Theta, Y);
xlabel('Theta angular displacement');
ylabel('y profile');
for i=1:length(Y_linee)
    line([Y_linee(i),Y_linee(i)],[min(Y),max(Y)],'Color','k')
end



% THRUST ANGLE
R_base = 30;
R_roller = 8; 
eccentricity = 4;

for i=1:length(Y)
    alpha(i) = atan2(V(i), R_base+R_roller+Y(i));
    alpha_eccentric(i) = atan2(V(i)-eccentricity, sqrt((R_base+R_roller)^2-eccentricity^2)+Y(i));
end

figure
plot(Theta, alpha);
hold on
plot(Theta, alpha_eccentric);
xlabel('theta');
legend('alpha', 'alpha eccentric');
