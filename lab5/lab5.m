function lab5
global E R i0 a
R=1; i0=1; a=1;
t=0:0.01:1;
Et=100*cos(2*pi*t);

URm=[];
for E=Et
    UR=newmet5;
    URm=[URm,UR];
end
plot(t,Et,t,URm)
legend('Et','UR')

function x0=newmet5
epsilon=1e-3;
x0=0;
delta=funx(x0)/fund(x0);
while(abs(delta)>epsilon)
    delta=funx(x0)/fund(x0);
    x0=x0-delta;
end

function fx = funx(UR)
global a E R i0
fx=i0*(exp(a*(E-UR))-1)-UR/R;

function fx = fund(UR)
global E R i0 a
fx=- 1/R - a*i0*exp(a*(E - UR));
