function loss = costfun(theta, x_data, y_data)  %(1/2*m).*((nx1)'*(nxm)-(1xm))^2

	m = length(x_data(1,:));
	err = theta'*x_data - y_data;
	loss = (1/2/m)*sum(err.^2);

end
