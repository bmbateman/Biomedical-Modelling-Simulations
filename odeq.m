function xvalues=odeq(t,x)
global s d B0 B1 u k c  L

if t<=365
    xvalues=[s-d*x(1)-B1*x(3)*x(1); B1*x(3)*x(1)-u*x(2)+L;k*x(2)-c*x(3)];
else
    xvalues=[s-d*x(1)-B0*x(3)*x(1); B0*x(3)*x(1)-u*x(2)+L;k*x(2)-c*x(3)];
    
  
end 