global c1 c2 c3 ym yactual 
para =[1 1 1];
x=fmincon(@Code_3_ODE,para,[],[],[],[],[0 0 0],[inf inf inf]);
t=[1     2     3     4     5     6     7     8     9    10];
hold on
xlabel('t (dimension of time)');
ylabel('y');
plot(t,ym)
scatter(t,yactual,'filled')
hold off