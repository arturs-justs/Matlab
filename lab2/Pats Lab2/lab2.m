%% 2.Labaratorijas darbs
% Artuurs Justs
%% Darba merkis
% * Iepazities ar matlaba simbolisko matematiku
% * (Uzdevumus paneemu prieks Artuura Lillaisa, jo mana vaarda/uzvarda
% kopeejaa pdf failaa nebija)

%% 1. Uzdevums
% <<../uzd1.PNG>>
syms x;
y = solve((log(x/2)/(x^2)+1)-1==0,x);
pretty(y);

%% 2. Uzdevums
% <<../uzd2.PNG>>
u = ((2*x)/sqrt(3*(x^2)+1))-(3*(x^3)/((3*x^2+1)^3)/2);
u_int = int(u);
u_v = vectorize(u);
u_int_v = vectorize(u_int);
x = [-50:0.01:50];
u_n = eval(u_v);
u_int_n = eval(u_int_v);
plot(x,u_n,x,u_int_n)
ylim([-11 11]);
grid;
u_ltx = latex(u);
u_int_ltx = latex(u_int);
h=legend(['$',u_ltx,'$'],['$',u_int_ltx,'$']);
set(h,'Interpreter','Latex')

%% Secinajumi
% Darba gaitaa iepazinos ar matlaba simbolisko matematiku. Izmeeginaaju
% syms, pretty, solve, latex komandas darba gaitaa. Ar plot paliidziibu izveidoju
% grafiku prieks 2. uzdevuma, so grafiku ar legend, ylim, grid, latex
% komandu paliidziibu noformaateeju to.