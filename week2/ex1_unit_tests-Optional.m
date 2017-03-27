## Copyright (C) 2017 Machine Learning Coursera - March 2017
##
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
##
## Unit test for week 2, Programming assignment - Optional functions
## Put this file in the ex1/ folder and execute it from Octave with:
## >> test ex1_unit_tests-Optional
## or
## >> test ex1_unit_tests-Optional verbose % if you want more details about error/success
##
## Enjoy!
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-25

%% Optional tasks/functions

%% Test for featureNormalize function
%% Test case 1
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize([1; 2; 3]);
%! exp = [-1;0;1];
%! tol = eps;
%! fprintf('Testing featureNormalize function... 1,');
%!assert(Xn, exp);
%!assert(mu, 2);
%!assert(sigma, 1);
%% Test case 2
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize(magic(3));
%! exp = [1.13389 -1.00000 0.37796; -0.75593 0.00000 0.75593; -0.37796 1.00000 -1.13389];
%! tol = -10^14*eps;
%! fprintf('2,');
%!assert(Xn, exp, tol);
%!assert(mu, [5 5 5]);
%!assert(sigma,[2.6548 4.0000 2.6458], tol);
%% Test case 3
%!shared Xn, mu, sigma, exp, tol
%! [Xn mu sigma] = featureNormalize([-ones(1,3); magic(3)]);
%! exp = [-1.21725 -1.01472 -1.21725;...
%! 1.21725 -0.56373 0.67625; -0.13525 0.33824 0.94675; 0.13525 1.24022 -0.40575];
%! tol = -10^11*eps;
%! fprintf('3 ');
%!assert(Xn, exp, tol);
%!assert(mu, [3.5 3.5 3.5]);
%!assert(sigma,[3.6968 4.4347 3.6968], tol);
%! fprintf('OK!!!\n');

%% Test for computeCostMulti function
%% Test case 1
%!shared X, y, theta, expected, tol
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2; 5; 5; 6];
%! theta = [0.4; 0.6; 0.8];
%! expected = 5.2950;
%! tol = -4*eps;
%! fprintf('Testing computeCostMulti function... ');
%!assert(computeCostMulti(X, y, theta), expected, tol);
%! fprintf('OK!!!\n');

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
%! fprintf('Testing gradienteDescentMulti function... ');
%!assert(theta, theta_exp, tol);
%!assert(J_hist(1), 2.8299, tol);
%!assert(J_hist(end), 0.0017196, tol);
%! fprintf('OK!!!\n');


%% Test for normalEqn function
%% Test case 1
%!shared X, y, theta, expected, tol
%! X = [ 2 1 3; 7 1 9; 1 8 1; 3 7 4 ];
%! y = [2; 5; 5; 6];
%! tol = -11^10*eps;
%! expected = [0.0083857; 0.5681342; 0.4863732];
%! fprintf('Testing normalEqn function... ');
%!assert(normalEqn(X,y), expected, tol);
%! fprintf('OK!!!\n');

