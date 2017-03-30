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
## Unit test for week 3, Programming assignment - Mandatory functions
## Put this file in the ex2/ folder and execute it from Octave with:
## >> test ex2_unit_tests
## or
## >> test ex2_unit_tests verbose % if you want more details about error/success
##
## Enjoy!
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-25

%% Test for warmUpExercise Sigmoid function
%!shared tol, m_exp, e_exp
%! tol = -12^10*eps;
%! m_exp = [0.99966 0.73106 0.99753; 0.95257 0.99331 0.99909; 0.98201 0.99988 0.88080];
%! e_exp = [0.73106 0.5; 0.5 0.73106];
%! fprintf('Testing sigmoid function...\n');
%!assert(sigmoid(1200000), 1);
%! fprintf('  - Test 1 OK!\n');
%!assert(sigmoid(-25000), 0);
%! fprintf('  - Test 2 OK!\n');
%!assert(sigmoid(0), 0.5);
%! fprintf('  - Test 3 OK!\n');
%!assert(sigmoid([4 5 6]), [0.98201, 0.99331, 0.99753], tol);
%! fprintf('  - Test 4 OK!\n');
%!assert(sigmoid(eye(2)), e_exp, tol);
%! fprintf('  - Test 5 OK!\n');
%!assert(sigmoid(magic(3)),m_exp, tol);
%! fprintf('  - Test 6 OK!\n');
%! fprintf('Test on Sigmoid function => PASSED!\n\n');

%% Test for costFunction(Unregularized)
%!shared X, y, theta, J, grad, tol
%! X = [ones(3,1) magic(3)];
%! y = [1 0 1]';
%! theta = [-2 -1 1 2]';
%! [J grad] = costFunction(theta, X, y);
%! tol = -12^10*eps;
%! fprintf('Testing costFunction...\n');
%!assert(J, 4.6832, tol);
%! fprintf('  - Cost function OK!\n');
%!assert(grad, [0.31722 0.87232 1.64812 2.23787]', tol);
%! fprintf('  - Gradient OK!\n');
%% Test with exercise dataset(same test of ex2.m file)
%!shared data, X, y, theta, J, Jt, grad, gradt, test_theta, tol
%! data = load('ex2data1.txt');
%! X = [ones(size(data, 1), 1) data(:, [1 2])];
%! theta = zeros(size(X, 2), 1);
%! y = data(:, 3);
%! test_theta = [-24 0.2 0.2]';
%! tol = -12^10*eps;
%! [J grad] = costFunction(theta, X, y);
%! [Jt gradt] = costFunction(test_theta, X, y);
%! fprintf('Testing with exercise dataset...\n')
%!assert(J, 0.69315, tol);
%! fprintf('  - Cost function OK!\n');
%!assert(grad, [-0.1 -12.0092 -11.2628]', tol);
%! fprintf('  = Gradient OK!\n');
%!assert(Jt, 0.21833, tol);
%! fprintf(' - Cost function OK!\n')
%!assert(gradt, [0.042903 2.5662 2.6468]', tol);
%! fprintf('  - Gradient OK!\n');
%! fprintf('Cost Function and Gradient => PASSED!\n\n');

%% Test for predict function
%% Test case 1
%!shared X, theta,expected
%! X = [1 1 ; 1 2.5 ; 1 3 ; 1 4];
%! theta = [-3.5 ; 1.3];
%! expected = logical([0 0 1 1])';
%! fprintf('Testing predict function...\n');
%!assert(predict(theta, X), expected);
%! fprintf('  - Test 1 OK!\n');
%% Test case 2
%!shared X, theta, expected
%! X = magic(3);
%! theta = [4 3 -8]';
%! expected = logical([0 0 1])';
%!assert(predict(theta,X), expected);
%! fprintf('  - Test 2 OK!\n');
%! fprintf('Test on Predict function => PASSED!\n\n');

%% Test for costFunctionReg(Regularized)
%% Test case 1
%!shared X, y, theta, J, grad, tol
%! X = [ones(3,1) magic(3)];
%! y = [1 0 1]';
%! theta = [-2 -1 1 2]';
%! [J grad] = costFunctionReg(theta, X, y, 0);
%! tol = -12^10*eps;
%! fprintf('Testing costFunctionReg...\n');
%!assert(J, 4.6832, tol);
%! fprintf('  - Cost function Test 1 OK!\n');
%!assert(grad, [0.31722 0.87232 1.64812 2.23787]', tol);
%! fprintf('  - Gradient Test 1 OK!\n');
%% Test case 2
%!shared X, y, theta, J, grad, tol
%! X = [ones(3,1) magic(3)];
%! y = [1 0 1]';
%! theta = [-2 -1 1 2]';
%! [J grad] = costFunctionReg(theta, X, y, 4);
%! tol = -12^10*eps;
%!assert(J, 8.6832, tol);
%! fprintf('  - Cost function Test 2 OK!\n');
%!assert(grad, [0.31722 -0.46102 2.98146 4.90454]', tol);
%! fprintf('  - Gradient test 2 OK!\n');
%! fprintf('Test on Cost function regularized => PASSED!\n\n');
