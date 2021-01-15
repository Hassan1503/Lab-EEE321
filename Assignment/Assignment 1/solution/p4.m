x=-2:.01:2
y_p=sqrt(4-x.^2)
y_n=-sqrt(4-x.^2)
figure
plot(x,y_p,'b','linewidth',2)
grid on
hold on
plot(x,y_n,'b','linewidth',2)
grid on