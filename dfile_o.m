clc 
clear all
%Basic System Parameters in English units

L1= 4.625;    % inches - distance from suspension spring to clutch impulse
L2= 31.00;    % 42.00    % inches - distance from suspension spring to pendulum base
R1= 2.50;    % inches - radius of pendulum bob
Thick= 1.0;   % inches - pendulum bob thickness

%Convert into Metric units

L1_SI = L1 * 0.0254;         % meters - L1
L2_SI = L2 * 0.0254;         % meters - L2
R1_SI = R1 * 0.0254;         % meters - R2
Thick_SI = Thick * 0.0254;   % meters - Thick

G_SI= 9.81;                     % m/sec^2 - gravity
Rho_SI= 7300;                   % kg/m^3 - density of bob cast iron

Area_SI= 3.1417 * R1_SI * R1_SI;       % m^2 - area of bob
Vol_SI= Area_SI * Thick_SI;             % m^3 - volume of bob

M_SI= Rho_SI * Vol_SI;                  % kg - mass of pendulum bob
J_SI= 0.5 * M_SI * R1_SI * R1_SI;       % kg * m^2 - moment of inertia

T= 0.25;                      % in-lbs - input impulse type torque
T_Amp= T * 0.11;              % Nm - input torque


tout= simout(:,5);

subplot(2,3,1)
%plot(tout,simout(:,1)), grid
xlabel('Time (sec)'), ylabel('Input')

subplot(2,3,2)
%plot(tout,simout(:,2)), grid
xlabel('Time (sec)'), ylabel('Acceleration (rad/sec^2)')

subplot(2,3,3)
%plot(tout,simout(:,3)), grid
xlabel('Time (sec)'), ylabel('Velocity (rad/sec)')

subplot(2,3,4)
%plot(tout,simout(:,4)), grid
xlabel('Time (sec)'), ylabel('Position (rad)')

subplot(2,3,5)
%plot(simout(:,4),simout(:,3)), grid
xlabel('Angle Position (rad)'), ylabel('Angle Velocity (rad/sec)')

