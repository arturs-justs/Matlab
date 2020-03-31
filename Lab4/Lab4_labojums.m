%% 4.laboratorijas darbs
% Artuurs Justs
%% Dots
% 
R1=1; R2=2; R3=3; R4=4; R5=6; R6=6 ;R7=7; R8=8;
t = 0:0.01:6.5;
E1 = lab3_fun(t);
E2 = sin(4*t);
J3 = 6+zeros(size(t));
%% Jaaprekina:
% * Spriegums UR7
% * Jauda UR7
% * Paarbaudiit un atteelot Kirhofa sprieguma likumu 3 kontuuram
R = [R1+R2     0              0; 
       0      R8+R4+R3      -R8;
       0          -R8       R8+R7+R6+R5];
    
E = [-E1;
    -E1+J3*(R8+R4+R3)-E2;
    E2];

Ik = R\E;

%IR7 = Ik(3,:)+Ik(2,:);
IR3k = Ik(3,:)+Ik(2,:);
UR7 = IR3k*R7;
PR7 = UR7.*IR3k;

figure(1)
yyaxis left
plot(t,UR7)
ylabel('Spriegums')
yyaxis right
plot(t,PR7)
ylabel('Jauda')
xlabel('t,s')
grid
%% KSpL 1. konturam
UR1 = Ik(1,:)*R1;
UR2 = Ik(1,:)*R2;
Uks1 = UR1+UR2;
%% KSpL lab3_fun(t) signaalam
Uks1f = Uks1+E1
figure(2), plot(t,Uks1f)
%% Secinaajumi:
% Apguutaas zinaasanas matemaatiskai sheemu simuleesanai noderees ETP laboratorijas un maajasdarbu sagatavee. 