clear all;close all;clc;

initTheta = zeros(2,1);
options = optimset('GradObj', 'on', 'MaxIter', 100);
[optTheta, functionVal, exitFlag] = fminunc(@costFun, initTheta, options)
