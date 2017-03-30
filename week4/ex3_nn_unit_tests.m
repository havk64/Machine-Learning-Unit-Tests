## Copyright (C) 2017 Machine Learning Coursera - March 2017
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-29

## -*- texinfo -*-
##
## Unit test for week 4, Programming assignment
##
## Put this file in the ex3/ folder and execute it from Octave with:
##
## >> test ex3_nn_unit_tests
##
## or, if you want more details about error/success
##
## >> test ex3_nn_unit_tests verbose
##
## Enjoy!
##

%% Test for predict function
%!shared Theta1, Theta2, X, expected
%! Theta1 = reshape(sin(0 : 0.5 : 5.9), 4, 3);
%! Theta2 = reshape(sin(0 : 0.3 : 5.9), 4, 5);
%! X = reshape(sin(1:16), 8, 2);
%! expected = [4 1 1 4 4 4 4 2]';
%! fprintf('Testing predict function...\n');
%!assert(predict(Theta1, Theta2, X), expected);
%! fprintf('Test on Predict function => PASSED!\n\n');
