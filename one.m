H=[500 1000 1500 2000 2500];
C=3*100000000;
t=0.0026;   %gamma
o = 0:5:45;
T1 = 2*H(1)*t/C.*tan(pi/180*o);
T2 = 2*H(2)*t/C.*tan(pi/180*o);
T3 = 2*H(3)*t/C.*tan(pi/180*o);
T4 = 2*H(4)*t/C.*tan(pi/180*o);
T5 = 2*H(5)*t/C.*tan(pi/180*o);
hold on
plot(o,T1,o,T2,o,T3,o,T4,o,T5)
title('Realtion between pulse spreading and scanning angle');
xlabel('\Theta/(°)');
ylabel('\DeltaT/s');
legend('H=500m','H=1000m','H=1500m','H=2000m','H=2500m');

% Theoretical limit by diffraction: gamma > = 2.44*lambda/D  D: aperture diameter 
% Laser: Nd:YAG lambda = 1064 nm, D = 10 cm -> gamma=0.026 mrad
% Typical values for ALS: ? = 0.15 – 1 mrad (ALS: airborne laser scanner)
% Ground laser beam diameter (assuming a circle):
% deltaT = D + 2h tan(gamma / 2) = 2h tan(gamma / 2) =  h * gamma
% Small divergence general advantageous:
%     - more homogeneous objects and terrain, less surface smoothing
%     - better XY and Z accuracy 