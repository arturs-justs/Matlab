%% Maajas darbs par sfeeras noskelsanu
% Artuurs Justs
%% Maajasdarbs:
% 
% * Atkaartot to pasu, un no sfeeras izgriezt gredzenu, un uzziimeet sfeeru ar izgriezto gredzenu
%
%%
% * sferas konstruesanas
% sferu apraksta
% x^2+y^2+z^2=R^2
R=1;
x=-1:0.01:1;
y=-1:0.01:1;
grid
[X,Y]=meshgrid(x,y);
Z=sqrt(R^2-(X.^2+Y.^2));
%% Pamatni (komplekso dalu no sferas)
% partaisisim par Nan
ind=real(Z)== 0;
Z(ind)=NaN;
%% uzzimesim sferas apaksu
Z2 = -sqrt(R^2-(X.^2+Y.^2));
ind2=real(Z2)==0;
Z2(ind2)=NaN;
mesh([X,X],[Y,Y],[Z,Z2])
%% Izgriezisim gredzenu no sferas
ind_gredzens=(Z > 0.5) & (Z<0.7);
Z_gredzens=Z;
Z_gredzens(~ind_gredzens)=NaN;
figure,mesh(X,Y,Z_gredzens)
zlim([-1 1])
%% Izgriezisim gredzenu no sferas un uzziimeesim sfeeru ar izgriezto gredzenu
ind_gredzens=(Z > 0.5) & (Z<0.7);
Z_gredzens=Z;
Z_gredzens(ind_gredzens)=NaN;
figure,mesh([X,X],[Y,Y],[Z_gredzens,Z2])
zlim([-1 1])
%% Secinaajumi
% * Pielietojot matemaatisko formulu un taadas funkcijas kaa: meshgrid,
% real, mesh, figure, sqrt var izveidot sfeeru.