function theta_o = gradientdescent(theta_i, x_data, y_data, alpha)
    
    m = length(x_data(1,:));
	err = theta_i'*x_data - y_data;
	err = [err; err].*x_data;
    grad = (1/m).*sum(err,2);
    theta_o = theta_i - alpha.*grad;
    
end