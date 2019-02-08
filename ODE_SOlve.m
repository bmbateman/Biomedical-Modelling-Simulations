function xvalues=odeq(t,x0)
global T T1 V s d B0 B1 u Lt k c x1 x2 x3 L
xvalues=[s-d*x(1)-B0*x(3)*x(1)==0; B0*x(3)*x1-u*x(2)+L==0;k*x(2)-c*x(3)==0]