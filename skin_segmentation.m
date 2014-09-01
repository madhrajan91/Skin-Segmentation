%skin segmentation
load('data.txt');
X=data(:,1:3);
y=data(:,4);
y(y==1) = 0;
y(y==2) = 1;
[m, n] = size(X);

X = [ones(m, 1) X];

initial_theta = zeros(n + 1, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, X, y);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;

options = optimset('GradObj', 'on', 'MaxIter', 500);

[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);

prob = sigmoid([1 152 179 223] * theta);
fprintf(['For a skin values 69 80 118 we predict probability of %f\n\n'], prob);

% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);

fprintf('\nProgram paused. Press enter to continue.\n');
