clear all;
close all;
clc;
cf = 2000;                  % carrier frequency (Hz)
sf = 22050;                 % sample frequency (Hz)
d = 1.0;                    % duration (s)
n = sf * d;                 % number of samples
s = (1:n) / sf;             % sound data preparation
s = sin(2 * pi * cf * s);   % sinusoidal modulation
% vid = videoinput('winvideo',1,'YUY2_640x480','FrameGrabInterval',10,'TriggerRepeat',Inf);
% set(vid,'ReturnedColorSpace','rgb');
% start(vid);
% pause(3);
% im1 = getsnapshot(vid);
% stop(vid);
% sound(s, sf);
% pause(3)
% start(vid);
% pause(3);
% im2 = getsnapshot(vid);
% stop(vid);
im1 = imread('c.jpg');
im1 = rgb2ycbcr(im1);
% sound(s, sf);
[cenbot1,vecbot1] = infobot(im1);
im2 = imread('b.jpg');
im2 = rgb2ycbcr(im2);
[cenbot2,vecbot2] = infobot(im2);
[turn_ang,dir_ang,dis] = todomath(cenbot1,vecbot1,cenbot2,vecbot2);
[maxi,maxj,dims] = size(im1);
dis = dis/((maxi + maxj)/2);
str = strval(turn_ang,dir_ang,dis);