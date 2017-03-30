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
## Unit test for week 4, Programming assignment
## Put this file in the ex3/ folder and execute it from Octave with:
## >> test ex3_nn_unit_tests
## or
## >> test ex3_nn_unit_tests verbose % if you want more details about error/success
##
## Enjoy!
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-29

%% Test for predict function
%!shared Theta1, Theta2, X, expected
%! Theta1 = reshape(sin(0 : 0.5 : 5.9), 4, 3);
%! Theta2 = reshape(sin(0 : 0.3 : 5.9), 4, 5);
%! X = reshape(sin(1:16), 8, 2);
%! expected = [4 1 1 4 4 4 4 2]';
%! fprintf('Testing predict function...\n');
%!assert(predict(Theta1, Theta2, X), expected);
%! fprintf('Test on Predict function => PASSED!\n\n');
