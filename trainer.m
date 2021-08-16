function [theta] = trainer(x,y)
format short g;
alpha = 0.01;
itr = 100;
theta = [0;0];
m = length(y);
min_e = min(x);
max_e = max(x);

range = max_e - min_e;



min_e = min(y);
max_e = max(y);

range = max_e - min_e;



on = ones(size(x,1),1);

x = [on x];
cost = 0;
j_hist = zeros(10000,1)
for i = 1:itr
    
    error = (x * theta) - y;
    theta = theta - ((alpha/m) * x' * error);
    cost = (1 / (2*m)) * sum(((x * theta) - y) .^2)
    j_hist(i,1) = cost;
    
end
    
end
