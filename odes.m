function xvalues=odes(t,x,s1)
global d B0 B1 u k c  L

if t<=365
    xvalues=[s1-d*x(1)-B1*x(3)*x(1); B1*x(3)*x(1)-u*x(2)+L;k*x(2)-c*x(3)];
    
else
    xvalues=[s1-d*x(1)-B0*x(3)*x(1); B0*x(3)*x(1)-u*x(2)+L;k*x(2)-c*x(3)];
    
  
end 