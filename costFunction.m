function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%


h=sigmoid(X*theta);

p1= log(h')*(-y);
p2= log(1.-h')*(1.-y);

J=1/m*(p1-p2);

size_theta = size(theta);
rows_theta = size_theta(1);
 
for t = 1:rows_theta
  grad(t) = 1/m*sum((h-y)'*X(:,t));
end  







% =============================================================

end
