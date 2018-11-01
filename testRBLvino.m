clc 
clear all
close all


%X=[0 0 1 1; 0 1 0 1];
Datos=load('Vino.txt');
vino_alt=load('Vino Aleatorio.txt');
Xmin=min([Datos;vino_alt]);
Xmax=max([Datos;vino_alt]);
sz=size(Datos);
m=2./(Xmax-Xmin);
b=-(Xmin+Xmax)./(Xmax-Xmin);
Xee=[];
Xalt=[];
for i=1:sz(2)
Xee=[Xee Datos(:,i)*m(i)*+b(i)];
Xalt=[Xalt vino_alt(:,i)*m(i)*+b(i)];
end

D=Xee(:,1)';
X=Xee(:,2:end)';
Dalt=Xalt(:,1)';
Xalt=Xalt(:,2:end)';

red=entrenaMLP(X,D,1.3);

szX=size(X)

for i=1:szX(2)
[y phi(i,:)]=operaRBF(red,X(:,i));
end
W=D*inv(phi);
red.w=[0 W];

szXalt=size(Xalt);

for i=1:szX(2)
[y(i) phi(i,:)]=operaRBF(red,X(:,i));
end
% y=operaRBF(red,[0;0])
% y=operaRBF(red,[1;0])
% y=operaRBF(red,[0;1])
% y=operaRBF(red,[1;1])
% % y=operaRBF(red,[1;1])