close all; 
clear all; 
clc; 
t0=0; 
tf=5; 
trange=[t0 tf]; 
%Initial values for two different scenarios
x0=[2.9 -1.3 25.9]';
x00=[2.85 -1.3 25.9]';
[t,x]= ode23('lorenz',trange,x0); 
[t1,x1]=ode23('lorenz',trange,x00);
figure 
subplot(3,1,1), plot(t,x(:,1),'r'),grid on; 
title('Variables in time scale'),ylabel('x1(t)'); 
subplot(3,1,2), plot(t,x(:,2),'b'),grid on; 
ylabel('x2(t)'); 
subplot(3,1,3), plot(t,x(:,3),'g'),grid on; 
ylabel('x3(t)');xlabel('t') 
figure 
plot3(x(:,1),x(:,2),x(:,3),'b',x1(:,1),x1(:,2),x1(:,3),'r'),grid on; 
xlabel('x1');ylabel('x2');zlabel('x3') 
title('Lorenz Attractor'); 
figure 
plot(x(:,1),x(:,3),'b',x1(:,1),x1(:,3),'r'),grid on; 
xlabel('x1');ylabel('x3'); 
title('Lorenz Attractor');