function [y phi]=operaRBF(red, X)

% red.c=[1 2 3; 1 2 3; 1 2 3];
% red.spread=1;
% red.w=[0 1 1 1]
% X=[1 1 1]';
szc=size(red.c);

for i=1:szc(2)
     r(i)=sqrt(sum((red.c(:,i)-X).^2));
end
phi=exp(-(r).^2/(2*red.spread^2));
y=sum(red.w(2:end).*phi)+(red.w(1));
end