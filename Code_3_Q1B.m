x=fmincon(@Code_3_Q1,[1;1],[],[],[],[],[-10;-10],[10;10]);
m=x(1)
b=x(2)
t=[1     2     3     4     5     6     7     8     9    10];
y=[0.2741 0.3125 0.1543 0.0679 0.0386 0.0125 0.0063 0.0026 0.0011 0.0005];
scatter(t,y,'filled')
hold on
xlabel('time (input)');
ylabel('y (output)');
plot(t,m.*t+b)