## Copyright
##
## Machine Learning Coursera - March 2017
## by Alexandro de Oliveira
## email: alexandro.oliveira@holbertonschool.com

## -*- texinfo -*-
##
## Unit test for week 2, Programming assignment - Optional functions
## Put this file in the ex1/ folder and execute it from Octave with:
## >> test week2-unitTest-Optional
## or
## >> test week2-unitTest-Optional verbose % if you want more details about error/success
##
## Enjoy!

%% Optional tasks/functions

%% Test for computeCostMulti function
%% Test case 1
%!shared X, y, theta, expected, tol
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2; 5; 5; 6];
%! theta = [0.4; 0.6; 0.8];
%! expected = 5.2950;
%! tol = -4*eps;
%! fprintf('Testing computeCostMulti function...\n');
%!assert(computeCostMulti(X, y, theta), expected, tol);

%% Test for gradientDescentMulti function
%% Test case 1
%!shared X, y, th, alpha, num_iter, theta, J_hist, theta_exp, tol
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2; 5; 5; 6];
%! th = zeros(3,1);
%! alpha = 0.01;
%! num_iter = 100;
%! [theta J_hist] = gradientDescentMulti(X, y, th, alpha, num_iter);
%! theta_exp = [0.23680; 0.56524; 0.31248];
%! tol = -13^10*eps;
%! fprintf('Testing gradienteDescentMulti function...\n');
%!assert(theta, theta_exp, tol);
%!assert(J_hist(1), 2.8299, tol);
%!assert(J_hist(end), 0.0017196, tol);

%% Test for normalEqn function
%% Test case 1
%!shared X, y, theta, expected, tol
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2; 5; 5; 6];
%! tol = -11^10*eps;
%! expected = [0.0083857; 0.5681342; 0.4863732];
%! fprintf('Testing normalEqn function...\n');
%!assert(normalEqn(X,y), expected, tol);

