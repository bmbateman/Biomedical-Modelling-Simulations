function [cost]= Code3_ODE(z)
global c1 c2 c3 ym yactual
t=(0:1:10);
yactual=[0.2741 0.3125 0.1543 0.0679 0.0386 0.0125 0.0063 0.0026 0.0011 0.0005];
c1=z(1);
c2=z(2);
c3=z(3);
[t,x] = ode45(@ode,t,[c3 0]); %solution to ode in @ode
y=x(:,2)
ym=y(2:end)
size(ym')
size(yactual)
error = ym'-yactual;
cost=sum(error.^2); %SSE

end