function xm=lorenz(t,x) 
%for these values of parameters, solution is chaotic 
sigma=10; r=28; b=8/3; 
xm=[-sigma*(x(1)-x(2)); 
 r*x(1)-x(2)-x(1)*x(3); 
 -b*x(3)+x(1)*x(2)]; 