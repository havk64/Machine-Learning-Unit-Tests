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
## Unit test for week 2, Programming assignment - Mandatory functions
## Put this file in the ex1/ folder and execute it from Octave with:
## >> test week2-unitTest
## or
## >> test week2-unitTest verbose % if you want more details about error/success
##
## Enjoy!
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-25

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

