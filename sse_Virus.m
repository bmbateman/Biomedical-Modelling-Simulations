function [sse_Virus]=sse_Virus(theta)
global Virus_o T T1 V s1 Virus Tcell
s1 = theta(1);
%rewrite ODE here with Virus in terms of theta

Tcell_o=poissrnd(Tcell);
Virus_o=lognrnd(log(Virus),0.2*log(10));
[t,x]=ode23s(@odes,(0:7:735),[T(2) T1(2) V(2)],[], s1);
Virus1=x(:,1);
sse_Virus=sum((Virus1-Virus_o).^2);
%sse_Virus
end 


