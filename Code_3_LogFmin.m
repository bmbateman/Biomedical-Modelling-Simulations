global c1 c2 c3 ym yactual 
para =[1 1 1];
x=fmincon(@Code_3_Log,para,[],[],[],[],[0 0 0],[inf inf inf]);
t=[1     2     3     4     5     6     7     8     9    10];
hold on
xlabel('time (input)');
ylabel('y (output)');
plot(t,ym)
scatter(t,yactual,'filled')
hold off

%CloseAll %calls function to close all plots open 