## Copyright
##
## Machine Learning Coursera - March 2017
## by Alexandro de Oliveira
## email: alexandro.oliveira@holbertonschool.com

## -*- texinfo -*-
##
## Unit test for week 2, Programming assignment - Mandatory functions
## Put this file in the ex1/ folder and execute it from Octave with:
## >> test week2-unitTest
## or
## >> test week2-unitTest verbose % if you want more details about error/success
##
## Enjoy!

%% Test for warmUpExercise
%!shared A
%! A = eye(5);
%!assert(warmUpExercise(),A);

%% Test for computeCost function
%% Test case 1
%!shared X, y, theta, expected
%! X = [1 2; 1 3; 1 4; 1 5];
%! y = [7; 6; 5; 4];
%! theta = [0.1; 0.2];
%! expected = 11.9450;
%! fprintf('Testing computeCost function...\n');
%!assert(computeCost(X, y, theta), expected);
%% Test case 2
%!shared X, y, theta, expected, tol
%! X = [1 2 3; 1 3 4; 1 4 5; 1 5 6];
%! y = [7; 6; 5; 4];
%! theta = [0.1; 0.2; 0.3];
%! expected = 7.0175;
%! tol = -2*eps;
%!assert(computeCost(X, y, theta), expected, tol);

%% Test for gradientDescent function
%% Test case 1
%!shared X, y, th, alpha, iter, expected, theta, J_hist, tol
%! X = [1 5; 1 2; 1 4; 1 5];
%! y = [1; 6; 4; 2];
%! th = [0; 0];
%! alpha = 0.01;
%! iter = 1000;
%! [theta J_hist] = gradientDescent(X, y, th, alpha, iter);
%! expected = [5.2148; -0.57335];
%! tol = -12^10*eps;
%! fprintf('Testing gradientDescent function...\n');
%!assert(theta, expected, tol);
%!assert(J_hist(1), 5.9794, tol);
%!assert(J_hist(end), 0.85426, tol);
%% Test case 2
%!shared theta, J_hist, thexp, tol
%! [theta J_hist] = gradientDescentMulti([1 5; 1 2],[1 6]',[.5 .5]',0.1,10);
%! thexp = [ 1.70986; 0.19229 ];
%! tol = -13^10*eps;
%!assert(theta, thexp, tol); 
%!assert(J_hist(1), 5.8853, tol);

%% Test for featureNormalize function
%% Test case 1
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize([1; 2; 3]);
%! exp = [-1;0;1];
%! tol = eps;
%! fprintf('Testing featureNormalize function...\n');
%!assert(Xn, exp);
%!assert(mu, 2);
%!assert(sigma, 1);
%% Test case 2
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize(magic(3));
%! exp = [1.13389 -1.00000 0.37796; -0.75593 0.00000 0.75593; -0.37796 1.00000 -1.13389];
%! tol = -10^14*eps;
%!assert(Xn, exp, tol);
%!assert(mu, [5 5 5]);
%!assert(sigma,[2.6548 4.0000 2.6458], tol);
%% Test case 3
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize([-ones(1,3); magic(3)]);
%! exp = [-1.21725 -1.01472 -1.21725;...
%! 1.21725 -0.56373 0.67625; -0.13525 0.33824 0.94675; 0.13525 1.24022 -0.40575];
%! tol = -10^11*eps;
%!assert(Xn, exp, tol);
%!assert(mu, [3.5 3.5 3.5]);
%!assert(sigma,[3.6968 4.4347 3.6968], tol);
