%% 1.laboratorijas darbs
%% Meerijumu datu apstraade
%% Darba meerki
% * iemaaciities apstraadaat meerijumu datus
% * iemaaciities veidot atskaites izmantojot report generator
% * iemaaciities nolasiit datus no grafika
%% Dots sekojosais grafiks
% 
% <<../bilde1.png>>
%

A = imread('bilde2.png');
figure(1), image(A);
figure(1),image([0,6],[120,0],A);
set(gca,'YDir','normal');
ylabel('FORWARD CURRENT - mA');
xlabel('FORWARD VOLTAGE - V');
%[x,y] = ginput(8)
x = [0.5185
    1.0006
    1.4787
    1.9851
    2.4389
    3.0020
    3.5125
    3.9136];
y = [0
    0.6911
    0.8385
    0.9858
    1.2805
    8.7954
   42.9809
   99.4165];


hold on

V = 0.5185:0.01:3.9184;
C = polyfit(x,y,7);
I = polyval(C,V);
plot(x,y,'o',V,I);
grid;

%% Polinoma koeficienti
% C = 7
%% Secinaajumi
% * Matlabaa izmantojot taadas funkcijas kaa "ginput", "polyfit",
% "polyval", "x/ylabel" un "grid" var vegli un aatri izveidot grafikus, kurus buus viegli
% analizeet nakotnee. Tas loti nodedees, kad vajadzees tajsiit paarskatamo
% datu analiizi vai lab. darbus.
