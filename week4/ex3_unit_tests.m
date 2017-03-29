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

%% Test for lsCostFunction
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
%! fprintf(' - Gradient OK!\n   PASSED!\n');
