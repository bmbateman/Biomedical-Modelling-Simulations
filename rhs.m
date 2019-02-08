function [C1D,C2D,C3D,C4D,C5D]=rhs(t,x)
syms x
k21=1
k12=1
k41=.5
k14=.5
k32=2
k53-.5
k35=.5
k01=.1
c1=x(1);
c2=x(2);
c3=x(3);
c4=x(4);
c5=x(5);
C1D=-c1*(k2+k4)+k12*c2+k14*c4
C2D=-c2*(k32+k12)+k21*c1
C3D=k32*c2+k35*c5+k53*c3
C4D=k41*c1-k13*c4
C5D=k53*c3-c5*(k35+k05)
end 

