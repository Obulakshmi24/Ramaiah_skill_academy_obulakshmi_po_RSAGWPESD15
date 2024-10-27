% 2. Write a MATLAB script to generate a sequence of random numbers and plot them as a line graph. 

n = 100; % Number of random numbers
random_numbers = magic(n);

plot(random_numbers, 'g-', 'LineWidth', 1.5);
title('Random Number Sequence');
xlabel('Index');
ylabel('Random Value');
grid on;
