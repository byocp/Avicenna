%
% solves dx/dt = 1 - alpha x(t)V(x(t-T))
%
% where V(x)= x^m/(1+x^m)
%
% program from REG with small modifications by PHH
%
% uses MATLAB library function dde23 for delay-differential equations
%
function cheyne_stokes
clear;
close;
time_end=100;
alpha=2.0;
m=input('m= ')
%m=3.0;
T=input('T= ')
%T=0.1;

options = odeset('RelTol',1e-4,'AbsTol',[1e-4]);
sol = dde23(@cseoms_delay,[T],[0.5],[0 time_end],options);
ex=[0 time_end];
wy=[0 0];
plot(sol.x,sol.y,ex,wy);
axis([0 time_end 0 2.5]);
xlabel('t');
ylabel('x');
pause;
close;


function dydt=cseoms_delay(t,y,Z)
%  returns the coupled odes
    dydt=zeros(1,1);
    ylag = Z(:,1);
    dydt=[1-alpha*y(1)*ylag(1)^m/(1.0+ylag(1)^m)];
end
end
