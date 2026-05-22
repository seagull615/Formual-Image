clear
clc
close all

%% State matrix
A = [0 1;
    -1 -1];

%% Initial condition
x0 = [1; 0];

%% Time span
tspan = [0 20];

%% Solve
[t,x] = ode45(@(t,x) A*x, tspan, x0);

%% Time response
figure

plot(t,x(:,1),'LineWidth',2)
hold on
plot(t,x(:,2),'LineWidth',2)

xlabel('Time')
ylabel('State')

legend('x_1','x_2')
grid on

%% Phase portrait
figure

plot(x(:,1),x(:,2),'LineWidth',2)

hold on
plot(x(1,1),x(1,2),'ro','MarkerSize',8,'LineWidth',2)

xlabel('x_1')
ylabel('x_2')

title('Phase Portrait')

axis equal
grid on