trajx=csvread('/home/mikeqi/tmp/traj.csv');
t=trajx(:,1);
x=trajx(:,2);
y=trajx(:,3);
v=trajx(:,4);
c=trajx(:,5);
a=trajx(:,6);
figure(1);
plot(x,y, 'b-.'); 
print -djpg traj_waypoints.jpg
figure(2); 
hold on;
plot(t,v, 'g-o');
plot(t,a, 'r-s');
legend('time vs vel', 'time vs accel');
hold off;