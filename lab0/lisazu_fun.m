function lisazu_fun(f1,f2)
% funkcija zīmē Lisažu figūras
% mainīsim f1, f2 - iegūsim dažadas figūras
% Call:
% lisazu_fun(f1,f2)
t = 0:0.01:1;
%f1 = 1; f2 = 1;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot(x,y)
shg