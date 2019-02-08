function [sse_Tcell]=sse_Tcell(theta)
global Virus_o T T1 V s1 Virus Tcell
s1 = theta(1);
%rewrite ODE here with Virus in terms of theta
%[t,x]=ode23s(@odeq,t,x0)
Tcell_o=poissrnd(Tcell);
[t,x]=ode23s(@odes,(0:7:735),[T(2) T1(2) V(2)],[], s1);
Tcell1=x(:,1);
sse_Tcell=sum((Tcell1-Tcell_o).^2);

end 