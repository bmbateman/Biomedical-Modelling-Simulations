syms T T1 V s d B0 B1 u Lt k c x1 x2 x3 L
global T T1 V s d B0 B1 u Lt k c x1 x2 x3 L Virus Tcell

%constants%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s= 270;
d=.1;
B0=1.7E-6; %off treatment
B1=3.7E-7; %on treatment
u=1;
k=1E4;
c=23;
L=1E-3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

eqns=[s-d*x1-B0*x3*x1==0; B0*x3*x1-u*x2+L==0;k*x2-c*x3==0];
var=[x1 x2 x3];
S=solve(eqns,var);
T=eval(S.x1);
T1=eval(S.x2);
V=eval(S.x3);


t=(0:7:735);
x0=[T(2) T1(2) V(2)];
[t,x]=ode23s(@odeq,t,x0)

Tcell=x(:,1)+x(:,2);
Virus=x(:,3);
Tcell_o=poissrnd(Tcell);
Virus_o=lognrnd(log(Virus),0.2*log(10))


global Tcell Virus Tcell_o Virus_o
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)
plot(t,x(:,1))
xlabel('time (days)')
ylabel('Actual Concentration of Uninfected T-cell (cells/mL)')

figure(2)
plot(t,x(:,2))
xlabel('time (days)')
ylabel('Actual Concentration of Infected T-cell (cells/mL)')
figure(3)
plot(t,x(:,3))
xlabel('time (day)')
ylabel('Actual Concentration of HIV Virus (virions*uL/tcell)')
figure(4)
hold on
plot(t,Tcell)
scatter(t,Tcell_o)
xlabel('time (weeks)')
ylabel('Concentration of  T-cell (cells/mL)')
legend('Total Tcell concentration', 'Tcell noise')
hold off
figure(5)
plot(t,Virus)
hold on
scatter(t,Virus_o)
ylabel('Concentration of Virus (virons*uL/cell')
xlabel('time (days)')
legend('Virus concentration', 'Virus noise')




% function [sse]=cost(theta);
% global yn
% [t,x]=ode23s(@rhs,[0:10:365*2],[100 100],[],theta)
% ye=x(:,1);
% sse=sum((ye-yn).^2)   %ye == Tcell , yn == Tcell_o