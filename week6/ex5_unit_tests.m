## copyright (c) 2017 machine learning coursera - march 2017
##
## author: alexandro <alexandro.oliveira@holbertonschool.com>
## created: 2017-04-01

## -*- texinfo -*-
##
## unit test for week 6, programming assignment
##
## put this file in the ex5/ folder and execute it from octave with:
##
## >> test ex5_unit_tests
##
## or, if you want more details about error/success
##
## >> test ex5_unit_tests verbose
##
## enjoy!
##

%% Test for linearRegCostFunction
%!shared X, y, theta, J, g, J1, g1, tol, expec, expec1
%! X = [[1 1 1]' magic(3)];
%! y = [7 6 5]';
%! theta = [0.1 0.2 0.3 0.4]';
%! tol = 8^10 * eps;
%! expec = [ -1.400; -8.7333; -4.3333; -7.9333];
%! expec1 = [ -1.400; -8.2667; -3.6333; -7.0000];
%! [J g] = linearRegCostFunction(X, y, theta, 0);
%!assert(J, 1.3533, tol);
%!assert(g, expec, tol);
%! [J1 g1] = linearRegCostFunction(X, y, theta, 7);
%!assert(J1, 1.6917, tol);
%!assert(g1, expec1, tol);
