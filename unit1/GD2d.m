clear all;close all;clc;
x_data = -5:0.05:5;
noise = -0.3 + (0.3-(-0.3)).*rand(1,length(x_data));
y_data = 1.85*x_data+0.8+noise;
x_data = [ones(1,length(x_data(1,:))); x_data];
%%%%%%%%%%%%% hyperparameter begin %%%%%%%%%%%%
alpha = 0.05;
step = 1000;
%%%%%%%%%%%%% hyperparameter end %%%%%%%%%%%%
theta = rand(2,1); 
for i=1:step
    theta = gradientdescent(theta,x_data,y_data,alpha);
    loss(i) = costfun(theta,x_data,y_data);
    if mod(i,50)==0
        str=sprintf('step:%d, loss:%f', i, loss(i));
        disp(str);
    end
end
predict = theta(1) + theta(2).*x_data(2,:);
subplot(221);
plot(x_data(2,:),y_data,'x');
subplot(222);
plot(x_data(2,:),y_data,'x');hold on;plot(x_data(2,:),y_data-noise,'r');
subplot(223);
plot([1:step],loss);
subplot(224);
hold on;plot(x_data(2,:),y_data-noise,'r');plot(x_data(2,:),predict,'b');