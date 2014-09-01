function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid/ Logistic function of z.


g = zeros(size(z));


g = 1./(1+exp(-1.*z));



end