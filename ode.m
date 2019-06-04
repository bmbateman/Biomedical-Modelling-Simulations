function dx = ode(t,x)
global c1 c2
dx= [-c1*x(1); c1*x(1)-c2*x(2)];
end