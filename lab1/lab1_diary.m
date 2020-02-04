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
{Undefined function or variable 'Vn'.
} 
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

% saformēsim vektoru x ar sīkāku soli
V = -1:0.01:3.2;
I = C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
% atkartosim to pašu priekš 3. kārtas polinoma
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

plot(Vm,Im,'o',V,I)
I = C(1)*V.^3+C(2)*V^2+C(3)*V+C(4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a scalar. To perform
elementwise matrix powers, use '.^'.
} 
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
{Index exceeds array bounds.
} 
I = C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
{Index exceeds array bounds.
} 
C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

I = C(1)*V.^4+C(2)*V.^3+C(3)*V.^2+C(4)*V+C(5);
plot(Vm,Im,'o',V,I)
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
% atkartot 1. kārtai
C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

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

ans =

    15

sum([1 2; 3 4])

ans =

     4     6

Ivid = sum(Im)/5

Ivid =

    0.9400    1.9800    2.3800    3.3000    4.5000

Ivid = mean(Im)

Ivid =

    0.9400    1.9800    2.3800    3.3000    4.5000

%% vidējai vērtībai pielaikosim polinomu
C = polyfit(Im,Ivid,4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
Ivid = sum(Im)/5;
Ivid = mean(Im)

Ivid =

    0.9400    1.9800    2.3800    3.3000    4.5000

C = polyfit(Im,Ivid,4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
C = polyfit(Im,Ivid,4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
C=polyfit(Im,Ivid,4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m', 44)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/polyfun/polyfit.m',44,0)">line 44</a>)
X and Y vectors must be the same size.
} 
C=polyfit(Vm,Ivid,4);
I = plyval(C,V);
{Undefined function or variable 'plyval'.
} 
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

Istd =

    0.1140    0.1483    0.1924    0.1581    0.1581

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
bilde1.png  bilde2.png	lab1_diary.m

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

x =

  610.5957


y =

    0.5015

[x,y] = ginput(1)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('ginput', '/usr/local/MATLAB/R2018a/toolbox/matlab/uitools/ginput.m', 82)" style="font-weight:bold">ginput</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/uitools/ginput.m',82,0)">line 82</a>)
Interrupted by figure deletion
} 
figure(2),image([500,800],[1,0],B)
set(gca,'YDir','normal')
[x,y] = ginput(10)

x =

  580.9648
  597.9685
  611.5715
  657.1416
  751.0023
  780.2487
  610.2112
  527.2329
  566.0015
  548.9977


y =

    0.1059
    0.2402
    0.4970
    0.4940
    0.7478
    0.9001
    0.1865
    0.2402
    0.8105
    0.4433

hold on
[x,y] = ginput(10)

x =

  586.4060
  600.0090
  607.4906
  646.9393
  682.9873
  694.5498
  566.6816
  568.0419
  558.5198
  621.7738


y =

    0.1387
    0.2820
    0.3836
    0.3627
    0.3507
    0.1387
    0.1327
    0.3029
    0.5090
    0.3298

hold off
diary off
