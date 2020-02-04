%-- 02/04/2020 02:37:22 PM --%
mkdir lab1
cd lab1
diary lab1_diary.m
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'o-')
% aprakstīsim tos datus ar
% 2. kārtas polinomu
% y = C1*x^2+C2*x+C3
% to koeficientu atradīs funkciju
% polyfit - polynominal fitting
% sitakse
% C = polyfit(x,y,N)
% N - polinoma kārta
C = polyfit(Vn,Im,2)
C = polyfit(Vm,Im,2)
% saformēsim vektoru x ar sīkāku soli
V = -1:0.01:3.2;
I = C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
% atkartosim to pašu priekš 3. kārtas polinoma
C = polyfit(Vm,Im,3)
plot(Vm,Im,'o',V,I)
I = C(1)*V.^3+C(2)*V^2+C(3)*V+C(4);
I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
% lai neraksītu I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
% izmantosim funkciju polyval - palynominal
% sintakse
% y = polyval(C,x)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
% atkārtot 4. kārtai
I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
I = C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)+C(5);
I = C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
C = polyfit(Vm,Im,4)
I = C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
plot(Vm,Im,'o',V,I)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
% atkartot 1. kārtai
C = polyfit(Vm,Im,1)
plot(Vm,Im,'o',V,I)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%% Mērijumu datu sērijas
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7
0.9 1.8 2.6 3.3 4.5
1.0 2.0 2.4 3.4 4.3
0.8 1.9 2.5 3.5 4.6
0.9 2.0 2.3 3.1 4.4];
figure
plot(Vm,Im,'o-')
plot(Vm,Im','o-')
%% vidējās vērtības atrašana
sum([1 2 3 4 5])
sum([1 2; 3 4])
Ivid = sum(Im)/5
Ivid = mean(Im)
%% vidējai vērtībai pielaikosim polinomu
C = polyfit(Im,Ivid,4);
Ivid = sum(Im)/5;
Ivid = mean(Im)
C = polyfit(Im,Ivid,4);
C=polyfit(Im,Ivid,4);
C=polyfit(Vm,Ivid,4);
I = plyval(C,V);
I = polyval(C,V);
% uzzīmet 3 grafikus vienās asīs
% Vm,Im ar 'o'
%Vm,Ivid ar '*'
% V,I ar '-'
plot(Vm,Im','o')
hold on
plot(Vm,Ivid,'*')
hold off
plot(Vm,Im','o')
hold on
plot(Vm,Ivid','*')
plot(V,I,'-')
%% aprēķināsim standartnovirzi
Istd = std(Im)
errorbar(Vm,Ivid,Istd)
hold off
errorbar(Vm,Ivid,Istd)
% mēģināsim tikt vaļā no lauztās līnijas
errorbar(Vm,Ivid,Istd,'.')
errorbar(Vm,Ivid,Istd)
errorbar(Vm,Ivid,Istd,'.')
hold on
plot(V,I)
hold off
ls
%% Datu iegūšana no rasējuma
%% Datu iegūšana no skenētās bildes
A = imread('bilde1.png');
B = imread('bilde2.png');
figure(1),image(A)
figure(2),image(B)
figure(2),image([500,800],[0,1],B)
figure(2),image([500,800],[1,0],B)
set(gca,'YDir','normal')
[x,y] = ginput(1)
figure(2),image([500,800],[1,0],B)
set(gca,'YDir','normal')
[x,y] = ginput(10)
hold on
[x,y] = ginput(10)
hold off
diary off