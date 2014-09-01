%skin segmentation
load('data.txt');
X=data(:,1:3);
y=data(:,4);
%Instead of 1 and 2 as our classes, we set the classes as 0 and 1
y(y==1) = 0;
y(y==2) = 1;
[m, n] = size(X);

X = [ones(m, 1) X];

initial_theta = zeros(n + 1, 1);
lambda = 0.5;
% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y, lambda);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

% Gradient using fminunc
options = optimset('GradObj', 'on', 'MaxIter', 500);

[theta, cost] = fminunc(@(t)(costFunction(t, X, y, lambda)), initial_theta, options);

fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);


% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Training Set Accuracy: %f\n', mean(double(p == y)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;
load('in.txt')
disp(in)
prob = sigmoid(in * theta);
fprintf('predicting\n');
disp('Format:1, R, G, B, probability_that_it_is_skin');
disp([in prob]);


