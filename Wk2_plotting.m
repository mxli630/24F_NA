%% basic plotting
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)
xlabel('x'); ylabel('y')
title('Plot of y = sin(x)')
legend('sin(x)')
xlim([0,2*pi])
grid on
%% set the default linewidth and axes font size
set(groot, 'defaultLineLineWidth',2)
set(groot,'defaultAxesFontSize',12)
%% plotting multiply lines
x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

plot(x,y1,'--')
hold on
% the hold on command allows three functions to appear on the same plot
plot(x,y2,'r-.o')
hold on
plot(x,y3,':')
legend('sin(x)','sin(x-0.25)','sin(x-0.5)')
%%
x = 0:0.05:1;
y1 = exp(-x);
y2  = exp(-2*x);
figure(1)
plot(x,y1)
hold on
plot(x,y2)
hold off

% if y = Ae^{\gamma x}, then log(y) vs x is a straight line 
% crucial when you want to show exponential decay of error
figure(2)
semilogy(x,y1)
hold on
semilogy(x,y2);
hold off
%%
x = 1:0.05:2;
y1 = 3.*(x.^4);
y2 = 5.*(x.^(-2));
figure(1)
plot(x,y1)
hold on
plot(x,y2)
hold off

figure(2)
% if y = A x^\gamma, then log(y) vs log(x) is a straight line
loglog(x,y1)
hold on
loglog(x,y2)
hold off






