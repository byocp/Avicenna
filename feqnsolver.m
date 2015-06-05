function out_main=feqnsolver(input)
%% pure parameter
q=input;
p.C_a       = q(1);
p.C_v       = q(2);
p.R0_a      = q(3);
p.R_v       = q(4);
p.DeltaV    = q(5);
p.IHR       = q(6);
p.MAP       = q(7);
p.tau       = q(8);
p.V_H       = q(9);
p.Betta_H   = q(10);
p.P_init    = q(11);
p.HR_init   = q(12);
p.Alpha     = q(13);
p.Gamma     = q(14);
p.Delta_h   = q(15);
p.sig_sp    = q(16);
p.sig_Alpha = q(17);

%% differential equation
lags=[p.tau];
tspan=0:60;

sol = dde23(@dde_pedde,lags,[p.P_init;p.HR_init],tspan);
tint = linspace(0,60,120);
yint = deval(sol,tint);

% yint=sol.y;
% tint=30*sol.x/max(sol.x);

BP={yint(1,:)};
HR={yint(2,:)};
BR={sig([50:5:200]')};

w.tunit=length(tint)/length(tspan);
BP_mat=cell2mat(BP);
SPT=[{sig(BP_mat)},{[ones(1,floor(w.tunit*p.tau))*mean(1-sig(BP_mat)), 1-sig(BP_mat(1:end-floor(w.tunit*p.tau)))]}];

w.bps=50:5:200; %blood pressure series
BA= p.Betta_H*(1-sig(w.bps))./(1+p.Gamma*sig(w.bps))-p.V_H*sig(w.bps);
% BA=(BA-min(BA))/(max(BA)-min(BA));
% BA=1-BA;

out_main=[BP,HR,BR,SPT,BA,{tint}];

    function dydt = dde_pedde(t,y,Z)
        ylag1 = Z(:,1);
        p.Rc  = p.R0_a*(1+p.Alpha*(1-sig(ylag1(1))));
        p.Ts  = 1 - sig(ylag1(1));
        p.Tp  = sig(y(1));
        %% First diff eqn
        dpadt = -y(1) / (p.Rc * p.C_a) + y(2) * p.DeltaV / p.C_a;
        %dpadt = -y(1) / (1+p.Alpha * sig(ylag1)) / p.eps_a  +  p.mu * y(2) / p.eps_a ;

        %% Second diff eqn
        dhdt = p.Betta_H * p.Ts / (1+p.Gamma*p.Tp) - p.V_H * p.Tp  + p.Delta_h*( p.IHR - y(2) );
        % dhdt =  p.betta * sig(ylag1) / ( 1 + p.Gamma * (1-sig(y(1))) ) / p.eps_h - ...
        %     p.nu * (1-sig(y(1))) / p.eps_h + p.Delta * (1-y(2)) / p.eps_h;

        %% state vector
        dydt = [dpadt;dhdt];
    end

    function out=sig(x)
        out=1./(1+exp(-p.sig_Alpha.*(x-p.sig_sp)));
    end


end