%-- 02/18/2020 02:37:00 PM --%
mkdir lab2
cd lab2
diary lab2_diary
%% Simboliskaa mateemaatika
%% Piemeers
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22]
syms b11 b12 b21 b22
B = [b11 b12 ; b21 b22]
C = A*B
D = A.*B
%% Simbolisko mainiigo defineesana
% 1. veids
x = sym('x');
y = sym('y');
sqrt(x^2)
%% pienemsim kaa x ir lielaaks par 0
x = sym('x','positive');
sqrt(x^2)
% 2. veids
syms a11 a12 a21 a22
A = [a11 a12; a21 a22];
A'
%% pienemsim kaa a11 a12 a21 a22 ir relaali
syms a11 a12 a21 a22 real
A'
%% 3. veids
A = sym('a',[3 4])
%% atvisinaasana
syms x
diff(x^2)
%% parciaalie atvisinaajumi
syms x y
z = x^5+y^4;
diff(z,x)
diff(z,y)
%% Integreesana
%% Nenoteiktais integraalis\
int(x^2,x)
syms a x
int(x^2,a)
%% Noteiktais integraalis
syms x
int(x^2,x,-3,3)
double(int(x^2,x,-3,3))
%% Robezas
% limit()
syms x
limit(1/(x-1),x,1,'left')
limit(1/(x-1),x,1,'right')
%% Vienaadojumu risinaashana
syms x
solve(x^2-5*x+6==0,x)
%% Vienaadojumu sisteemas
syms x y z
atb = solve(x+y+z==21,x+y-z==1,x-y+z==9)
atb.x
atb.y
atb.z
%% izteiskmju vienkaarsosana
syms x
y = (x-1)*(x-2)/((x-3)*(x-4)^2)
yd = diff(y)
simplify(yd)
%% izteiksju veinkaarsosana 2
syms x
y = (x-2)*(x-3);
y
y2 = expand(y)
%% izteiksju veinkaarsosana 3
factor(y2)
%% izteiksju veinkaarsosana 4
horner(y)
%% simboliskas konstantes
pi
format long
pi
a = vpa('pi')
b = vpa('2')
c = vpa(2)
a+b+c
digits(100)
a = vpa(pi)
a = vpa(exp(1))
sqrt(a)
digits(10)
sqrt(a)
class(a)
class(b)
class(c)
%% izteismju "skaista" atteloshana
y = (x-1)*(x-2)/((x-3)*(x-4)^2)
pretty(y)
%% izteismju "skaista" atteloshana 2 variants
syms x
y = sqrt(x-1)/(x-4)^5
yltx = latex(y)
yltx2 = ['$',yltx,'$']
text(0,0.5,yltx2,'Interpreter','latex','FontSize',32,'BackgroundColor','white')
text(0.5,0.5,yltx2,'Interpreter','latex','FontSize',32,'BackgroundColor','white')
set(gca,'Visible','off')
%% rezultaatu grafiska atteloshana
%% apreekinu veiksana
syms x
y = x^2;
ezplot(y)
%% apreekinu veiksana
%% rezultaatu grafiskaa atteloshana ar plot
%% (2. lab. darba 2. uzdevums)
%% 1.
% Pienemsim ka ir dota funkcija, kurai ir jaatrod atvasinaajums
% Un gan funkciju, gan atvasinaajumu buus jaauziimee uz grafika izmantojot plot uzdotaajaa intervaalaa
% arii ar letex buus jaaizveido "legend" -a
syms x
y = x^3+2*x^2-5*x+4;
% 2.
yd = diff(y)
% atradam atvasinaajumu
% 3.
% Izteiksmes vektorizaacija
%% (punktinu ielikshana)
yv = vectorize(y)
ydv = vectorize(yd)
%% 4. defineesim x kaa skaitlu vektoru
x = -2:0.01:2;
yn = eval(yv);
ydn = eval(ydv);
%% tas biija 5. solis, izteiksmes interpretaacjia, citiem vaardiem, paskataas kaads ir x un ieliek to
%% 6. ziimesim ar plot
plot(x,yn,x,ydn)
%% 7. anoteesim grafiku
yltx = latex(y);
ydltxt = latex(yd)
h = legend(['$',yltx,'$'],['$',ydltxt,'$']), set(h,'Interpreter','Latex')
plot(x,yn,x,ydn)
h = legend(['$',yltx,'$'],['$',ydltxt,'$']), set(h,'Interpreter','Latex')