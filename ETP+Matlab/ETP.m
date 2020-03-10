R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=7;
E1=1; E2=2; E3=3;

R = [R1+R2+R3 -R2       0; 
   -R2    R2+R4+R5    -R5;
    0       -R5   R5+R6+R7]

E = [E1 -E2 -E3]'
%% Mekleesim konturstraavas
Ik = R\E
%% Uzdevums : atrast IR2, UR2, PR2 - ?
IR2 = Ik(1) -Ik(2)
UR2 = IR2*R2
PR2 = UR2*IR2
%% cits variants
% tagad mums buus 3 laika momenti
% un E1,E2,E3 buus 3 veertiibas
E1 = [1 -1 0];
E2 = [2 -2 0];
E3 = [3 -3 0];
E = [E1; -E2; -E3]
% mekleesim konurstraavas
Ik = R\E
%% Pirmaa rinda - 1. konturstraava
%% Otraa rinda - 2. konturstraava
%% Tresaa rinda - 3. konturstraava

%% Uzdevums, atrast IR3,UR3,PR3 - ?
IR3 = Ik(1,:)
UR3 = IR3*R3
PR3 = UR3.*IR3

%% cits variants 
% tagad mums buus laika mainiigie signaali
t = 0:00.1:1;
E1 = sin(2*pi*3*t);
% E2 = 5; % kaa pareizi pierakstiit konstanti
E2 = 5+zeros(size(t));
E3 = cos(2*pi*7*t);
E = [E1; -E2; -E3];
%% risinaasim vienaadojumu sisteemas, lai atrastu konturstraavas, tagad jaum mums ir 101 3 vienaadojumu sisteema
Ik = R\E;
%% Uzdevums buus sekojos, atrast un uzziimeet UR5,PR5 - ?
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
PR5 = UR5.*IR5;
%% ziimeesim
plot(t,UR5,t,PR5)
legend('UR5','PR5')
xlabel('t,s')
grid

%% cits paneemiens
% ka uz y asis gan Volt, gan Vati
figure
yyaxis left 
plot(t,UR5)
ylabel('spriegums')
yyaxis right
plot(t,PR5)
ylabel('jauda')

xlabel('t,s')

%% Rezultaatu paarbaude
% paarbaudiisim Kirhofa sprieguma likumu 3. konturam
% UR5+UR6+UR7==-E3
% paarnesiisim visu vienaa pusee
% UR5+UR6+UR7+E3==0
% un pieliidzinaasim kaadam mainiigajam Utst
% Utst = UR5+UR6+UR7+E3;
% un uzziimeesim to
UR6 = Ik(3,:)*R6;
UR7 = Ik(3,:)*R7;
Utst = UR5+UR6+UR7+E3;
figure(3), plot(t,Utst)
%% veelamais rezultaats 0
