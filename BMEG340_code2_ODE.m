%BMEG340_code3
vars c3 t
D = dirac(t)*c3
[t,y] = ode23s(@Code3_EquationFunc,[0 30],[D 0 0 0 0]);
figure()
plot(t,y(:,1))
hold on
plot(t,y(:,2))
plot(t,y(:,3))
plot(t,y(:,4))
plot(t,y(:,5))
xlabel('Time (hr)')
ylabel('Dosage (mg)')
legend('Blood', 'Liver', 'Metabolites', 'Tissue', 'Metabolites_B_l_o_o_d')
hold off