clc 
clear all
close all

% % c=[1 2 3; 1 2 3; 1 2 3];
% % ancho=1;
% w= [1 1 1];
% X=[1 1 1];
X=[0 0 1 1; 0 1 0 1];
D=[0 1 1 1];
red=entrenaMLP(X,D,1.3);
%y=operaRBF(red,[0 1 1 1;0 1 0 1])
szX=size(X);
%%phi=zeros(4);

% for i=1:szX(2)
% [y phi(i,:)]=operaRBF(red,X(:,i))
% end
%W=D*inv(phi);
red.w=[2.1356 -0.3727 -3.3912];
red.spread=0.5;
%red.c=[0.52 0.38;0.31 0.42];
red.c=[0.50 1;0.5 0.0];
[y,phi]=operaRBF(red,[0;0])
[y,phi]=operaRBF(red,[1;0])
[y,phi]=operaRBF(red,[0;1])
[y,phi]=operaRBF(red,[1;1])
% y=operaRBF(red,[1;1])