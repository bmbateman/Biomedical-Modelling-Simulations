function [cost]= gof(theta)
t=[1     2     3     4     5     6     7     8     9    10];
y=[0.2741 0.3125 0.1543 0.0679 0.0386 0.0125 0.0063 0.0026 0.0011 0.0005];
m=theta(1);
b=theta(2);
yest = m.*t +b; %Linear model 
error = y-yest;
cost=sum(error.^2); %SSE 