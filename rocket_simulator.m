% Simple Rocket Trajectory Simulator
% Author: Your Name
% GitHub Demo Project

clear;
clc;
close all;

% Constants
g = 9.81;          % Gravity (m/s^2)
v0 = 150;          % Initial velocity (m/s)
dt = 0.1;          % Time step (s)

% Time vector
t = 0:dt:35;

% Altitude equation
h = v0*t - 0.5*g*t.^2;

% Remove negative altitudes
h(h < 0) = 0;

% Find maximum altitude
[maxAlt, idx] = max(h);
timeAtApogee = t(idx);

% Plot
figure;
plot(t, h, 'LineWidth', 2);
grid on;

xlabel('Time (s)');
ylabel('Altitude (m)');
title('Rocket Flight Simulation');

hold on;
plot(timeAtApogee, maxAlt, 'ro', 'MarkerSize', 8);

text(timeAtApogee, maxAlt, ...
    sprintf(' Apogee = %.1f m', maxAlt));

fprintf('Maximum Altitude: %.2f m\n', maxAlt);
fprintf('Time to Apogee: %.2f s\n', timeAtApogee);