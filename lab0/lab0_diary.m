% Uzzīmēsi 2. kārtas polinomu
% polinoma koeficienti:
C = [2 3 10]

C =

     2     3    10

% Uzzīmēsim 2. kārtas polinomu
C = [2 3 10];
x = -6:2:6;
% x = sākuma_elements:solis:beigu_elements
y = C(1)*x.^2+C(2)*x+C(3)

y =

    64    30    12    10    24    54   100

% uzzīmēsim
plot(x,y)
x2 = -6:0.01:6;
y2 = C(1)*x2.^2+C(2)*x2+C(3);
plot(x2,y2)
%% Līnijas izskata maiņa
plat(x,y)
{Undefined function or variable 'plat'.
} 
plot(x,y)
plat(x2,y2)
{Undefined function or variable 'plat'.
} 
plot(x2,y2)
%% Līnijas izskata maiņa
% krāsa
plot(x,y, 'g')
plot(x,y, 'o')
% līnijas izskats
plot(x,y, '--')
% visi trīs kopā
plot(x,y, '--og')
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(x,y, '-.xc')
plot(x,y, '-.xm')
plot(x,y, :.xm')
 plot(x,y, :.xm')
            ↑
{Error: Invalid use of operator.
} 
plot(x,y, ':.xm')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.
} 
plot(x,y, '-.xm')
plot(x,y, '-.xm')
close all
my_plot(x,y)
my_plot(x2,y2)
%% Kā zīmēt vairākas līknes
plot(x,y,x2,y2)
%% ja x ir vienāds
plot(x,[y' -y'])
plot(x,y,'o',x2,y2)
% citas grafiskās funkcijas
stem(x,y)
stairs(x,y)
bar(x,y)
%% Kā zīmēt vairākas līkmes - 2
plot(x2,y2)
hold on
stairs(x,y)
hold off
%% Lisažu figuras zīmēšana
% parametriskie grafiki
edit
help lisazu
  Skripts zīmē Lisažu figūras
  mainīsim f1, f2 - iegūsim dažadas figūras

lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu_fun(1,2)
lisazu_fun(1,2)
lisazu_fun_anim(5,2)
lisazu_fun_anim(5,2)
lisazu_fun_anim(5,2)
lisazu_fun_anim(5,2)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(5,2)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.05)
} 
lisazu_fun_anim(5,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(69,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(1,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(2,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(21,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(88,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(133,1337)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(1337,1337)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.05)
} 
lisazu_fun_anim(69,69)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(3333,3333)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
dairy off
{Undefined function or variable 'dairy'.
} 
diary off
