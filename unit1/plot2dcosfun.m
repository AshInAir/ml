close all;clear all;clc;

[theta0 theta1] = meshgrid(-5:.05:5);
x_data=-5:0.05:5;
noise = -0.3 + (0.3-(-0.3)).*rand(1,length(x_data));
y_data=1.85*x_data+0.8+noise;
plot(x_data, y_data);
x_data = [ones(1,length(x_data(1,:))); x_data];

[m n]=size(theta0);
loss=zeros(m,n);
for i=1:m
    for j=1:n
        loss(i,j) = costfun([theta0(i,j); theta1(i,j)], x_data, y_data);
    end
end
figure;
contour(theta1, theta0, loss, 20);
colorbar;
