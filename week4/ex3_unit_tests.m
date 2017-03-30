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
## Put this file in the ex1/ folder and execute it from Octave with:
## >> test ex3_unit_tests
## or
## >> test ex3_unit_tests verbose % if you want more details about error/success
##
## Enjoy!
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-27

%% Test for lrCostFunction
%!shared X, theta, y, lambda, tol, J, grad
%! X = [ones(5,1) reshape(1:15,5,3)/10];
%! y = [1;0;1;0;1] >= 0.5; %% creates a logical array
%! theta = [-2; -1; 1; 2];
%! lambda = 3;
%! [J grad] = lrCostFunction(theta, X, y, lambda);
%! tol = -12^10*eps;
%! fprintf('Testing lsCostFunction function:\n');
%!assert(J, 2.5348, tol);
%! fprintf(' - Cost Function OK!\n');
%!assert(grad, [ 0.14656 -0.54856 0.72472 1.39800]', tol);
%! fprintf(' - Gradient OK!\n');
%! fprintf('lrCostFunction => PASSED!\n');

%% Test for oneVsAll function
%!shared X, y, num_labels, lambda, expected, tol
%! X = [magic(3) ; sin(1:3); cos(1:3)];
%! y = [1; 2; 2; 1; 3];
%! num_labels = 3;
%! lambda = 0.1;
%! expected = [-0.55952   0.61925  -0.550361  -0.093526; ...
%! -5.4732  -0.47164   1.2611   0.63487; ...
%! 0.068381  -0.37559  -1.652262  -1.410138];
%! tol = -13^10*eps;
%! fprintf('Testing oneVsAll function:\n');
%!assert(oneVsAll(X, y, num_labels, lambda), expected, tol);
%! fprintf('Function oneVsAll => PASSED!\n');

% Test for predictOneVsAll function
%!shared all_theta, X
%! X = X = [1 7; 4 5; 7 8; 1 4];
%! all_theta = [1 -6 3; -2 4 -3];
%! fprintf('Testing predictOneVsAll function... ');
%!assert(predictOneVsAll(all_theta, X),[1 2 2 1]');
%! fprintf('PASSED!\n');

%% Test for predict function
%!shared Theta1, Theta2, X, expected
%! Theta1 = reshape(sin(0 : 0.5 : 5.9), 4, 3);
%! Theta2 = reshape(sin(0 : 0.3 : 5.9), 4, 5);
%! X = reshape(sin(1:16), 8, 2);
%! expected = [4 1 1 4 4 4 4 2];
%! fprintf('Testing predict function... ');
%!assert(predict(Theta1, Theta2, X), expected);
%! fprintf('PASSED!\n');
