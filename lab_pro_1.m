% MATLAB Programming
% Develop a MATLAB script that simulates and plots the trajectory of a projectile. Take 
% into account initial velocity, launch angle, and gravitational acceleration. Plot the 
% range and maximum height. 

initial_velocity = 50; % m/s
launch_angle = 45; % deg
g = 9.81;

theta = deg2rad(launch_angle);
time_of_flight = (2 * initial_velocity * sin(theta)) / g;
t = linspace(0, time_of_flight, 100);
x = initial_velocity * cos(theta) * t;
y = initial_velocity * sin(theta) * t - (0.5 * g * t.^2); 
plot(x, y,'LineWidth', 2);
hold on;
title('Projectile Trajectory');
xlabel('Range (m)');
ylabel('Height (m)');
grid on;
max_height = (initial_velocity^2 * sin(theta)^2) / (2 * g);
plot(range, max_height, 'ro', 'MarkerSize', 8, 'DisplayName', 'Max Height');
legend('Trajectory', 'Max Height');
fprintf('Maximum Height: %.2f m\n', max_height);
fprintf('Range: %.2f m\n', range);
