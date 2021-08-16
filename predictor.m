function salary = predict_salary(theta,exp)
format long g;
exp = [1 exp];

salary = exp * theta;
end
