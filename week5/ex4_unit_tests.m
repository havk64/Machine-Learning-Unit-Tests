## Copyright (C) 2017 Machine Learning Coursera - March 2017
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-31

## -*- texinfo -*-
##
## Unit test for week 5, Programming assignment
##
## Put this file in the ex4/ folder and execute it from Octave with:
##
## >> test ex4_unit_tests
##
## or, if you want more details about error/success
##
## >> test ex4_unit_tests verbose
##
## Enjoy!
##

%% Test for Cost Function
%% Test case without regularization(lambda = 0)
%!shared J, expected, tol, ils, hls, nl, X, y, nn_params, Theta1, Theta2, lambda
%! load('ex4data1.mat');
%! load('ex4weights.mat');
%! nn_params = [Theta1(:) ; Theta2(:)];
%! ils  = 400;
%! hls = 25;
%! nl = 10;
%! lambda = 0;
%! tol = 8^10 * eps;
%! J = nnCostFunction(nn_params, ils, hls, nl, X, y, lambda);
%! fprintf('Testing nnCostFunction function(J value):\n');
%!assert(J, 0.287629, tol);
%! fprintf('  - Without regularization OK!\n');
%!assert(nnCostFunction(nn_params, ils, hls, nl, X, y, 1), 0.38377, tol);
%! fprintf('  - With regularization, test 1 OK!\n');

%% Test case with regularization
%!shared ils, hls, nl, nn, X, y, lambda, J, expected, tol
%! ils = 2;
%! hls = 2;
%! nl = 4;
%! nn = [ 1:18 ] / 10;
%! X = cos([1 2 ; 3 4 ; 5 6]);
%! y = [4; 2; 3];
%! lambda = 4;
%! tol = -11^10*eps;
%! [J ~] = nnCostFunction(nn, ils, hls, nl, X, y, lambda);
%!assert(J, 19.4736, tol);
%! fprintf('  - With regularization, test 2 OK!\n\n');


%% Test case for sigmoidGradient
%% Test case 1(from ex4.m file)
%!shared input, expected, tol
%! input = [-1 -0.5 0 0.5 1];
%! expected = [0.196612 0.235004 0.25 0.235004 0.196612];
%! tol = 9^10*eps;
%! fprintf('Testing sigmoidGradient function:\n');
%!assert(sigmoidGradient(input), expected, tol);
%! fprintf('  - Test case 1, OK\n');
%% Test case 2(from Resources tab)
%!shared expected, tol
%! tol = 11^10*eps;
%! expected = [1.9661e-001  1.0499e-001  4.5177e-002; ...
%!   3.3524e-004  1.9661e-001  2.4665e-003; ...
%!   4.5177e-002  6.6481e-003  9.1022e-004; ...
%!   1.7663e-002  1.2338e-004  1.0499e-001];
%!assert(sigmoidGradient([[-1 -2 -3] ; magic(3)]), expected, tol);
%! fprintf('  - Test case 2, OK\n');
%! fprintf('sigmoidGradient function => PASSED!\n\n');

%% Test for randInitializeWeights
%!shared W, st
%! W = randInitializeWeights(10,5);
%! st = std(std(W));
%! fprintf('Testing randInitializeWeights function:\n');
%!assert(size(W), [5 11]);
%! fprintf('Test case 1, OK!\n');
%!assert(0.08 < st < 0.3);
%! fprintf('Test case 2, OK!\n');
%! fprintf('randInitializeWeights function => PASSED!\n\n');

%% Test for Gradient(Backpropagation)
%% Test case 1, without regularization
%!shared ils, hls, nl, m, nn, Theta1, Theta2, X, y, p, ng, grad, costF
%! ils = 3;
%! hls = 5;
%! nl = 3;
%! m = 5;
%! Theta1 = debugInitializeWeights(hls, ils);
%! Theta2 = debugInitializeWeights(nl, hls);
%! X  = debugInitializeWeights(m, ils - 1);
%! y  = 1 + mod(1:m, nl)';
%! nn = [Theta1(:) ; Theta2(:)];
%! costF = @(p) nnCostFunction(p, ils, hls, nl, X, y, 0);
%! [cost, grad] = costF(nn);
%! ng = computeNumericalGradient(costF, nn);
%! fprintf('Testing Backpropagation Gradient:\n');
%!assert(norm(ng-grad)/norm(ng+grad) < 1*10^-9);
%! fprintf('  - Gradient without regularization, OK\n');
%% Test case 2, with regularization
%!shared ils, hls, nl, nn, X, y, lambda, grad, expected, tol
%! ils = 2;
%! hls = 2;
%! nl = 4;
%! nn = [ 1:18 ] / 10;
%! X = cos([1 2 ; 3 4 ; 5 6]);
%! y = [4; 2; 3];
%! lambda = 4;
%! expected = [0.76614 0.97990 0.37246 0.49749 0.64174 0.74614 0.88342 ...
%! 0.56876 0.58467 0.59814 1.92598 1.94462 1.98965 2.17855 2.47834 ...
%! 2.50225 2.52644 2.72233]';
%! tol = -11^10*eps;
%! [~, grad] = nnCostFunction(nn, ils, hls, nl, X, y, lambda);
%!assert(grad, expected, tol);
%! fprintf('  - Gradient with regularization OK!\n');
%! fprintf('Test on Backpropagation Algorithm => PASSED!\n\n');
%! fprintf('BOOOMMM!!! CONGRATS! \\o/ \\o/ \\o/\n\n');
