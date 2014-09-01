function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));



h=sigmoid(X*theta);

p1= log(h')*(-y);
p2= log(1.-h')*(1.-y);

J=1/m*(p1-p2);

size_theta = size(theta);
rows_theta = size_theta(1);

%Vectorized Implementation
temp = (h-y)'*X;
grad = 1/m*(temp);
%for t = 1:rows_theta
%  grad(t) = 1/m*sum((h-y)'*X(:,t));
%end  







% =============================================================

end
