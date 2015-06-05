clear all;
clear;

% p.eps_a =0.3;
% p.eps_h =0.15;
% p.alpha =1.3;
% p.betta =0.3;
% p.gamma =0.2;
% p.delta =1;
% p.mu    =0.5;
% p.nu    =0.2;
% p.IHR   =1.66;
% p.MAP   =100;
% p.sig_sp   =1;
% p.sig_alpha=8;
% p.P_init =140;
% p.HR_init=2;


p.C_a       = 1.55;
p.C_v       = 50;
p.R0_a      = 0.6;
p.R_v       = 0.016;
p.DeltaV    = 50;
p.tau       = 3;
p.V_H       = 1.17;
p.Betta_H   = 0.84;
p.Alpha     = 1.3;
p.Gamma     = 0.2;
p.Delta_h   = 1.7;
p.IHR       = 1.66;
p.MAP       = 100;
p.P_init    = 160;
p.HR_init   = 2;
p.sig_sp    = 120;
p.sig_Alpha = 0.05;


pp=[p.C_a,p.C_v,p.R0_a,p.R_v,p.DeltaV,p.tau,p.V_H,p.Betta_H,p.Alpha,p.Gamma,...
p.Delta_h,p.IHR,p.MAP,p.P_init,p.HR_init,p.sig_sp,p.sig_Alpha];


result=eqnsolver(pp);
BP=cell2mat(result(1));
HR=cell2mat(result(2));
p.HR_nom={HR};
p.BP_nom={BP};
p.HR_nominal=HR(end);
p.BP_nominal=BP(end);
%%
res=100;
clear x; clear y;
for j=1:length(pp)
    w=0.2;
    input=pp;

    for i=1:res
        input(j)=(1-w)*pp(j)+2*(w)*pp(j)*i/res;
        result=eqnsolver(input);
        BP=cell2mat(result(1));
        HR=cell2mat(result(2));
        x(i,j)=HR(end);
        y(i,j)=BP(end);
        xx(i,j)={HR};
        yy(i,j)={BP};
    end
end

%%
close all;

ss=[{'p.C_a'},{'p.C_v'},{'p.R0_a'},{'p.R_v'},{'p.DeltaV'},{'p.tau'},{'p.V_H'},{'p.Betta_H'},{'p.Alpha'},{'p.Gamma'},...
{'p.Delta_h'},{'p.IHR'},{'p.MAP'},{'p.P_{init}'},{'p.HR_{init}'},{'p.sig_{sp}'},{'p.sig_{Alpha}'}];

for j=1:length(pp)
    var=(1-w)*pp(j)+ 2*(w)*pp(j)*([1:res]-1)./res;
    var=var';
    SS_HR=( (x(:,j)-p.HR_nominal) /p.HR_nominal ); %./( (var-pp(j))./ pp(j) );
    SS_BP=( (y(:,j)-p.BP_nominal) /p.BP_nominal ); %./( (var-pp(j))./ pp(j) );

    figure(1)
    subplot(4,5,j)
    plot(var,SS_HR,'b');
    hold on
    plot(var,SS_BP,'g');
    xlabel(ss(j));
    ylabel('Sensitivity');
    grid
end

%%
pp=[p.C_a,p.C_v,p.R0_a,p.R_v,p.DeltaV,p.tau,p.V_H,p.Betta_H,p.Alpha,p.Gamma,...
p.Delta_h,p.IHR,p.MAP,p.P_init,p.HR_init,p.sig_sp,p.sig_Alpha];

close all
for j=1:length(pp)
    Z1=zeros(100,1000);
    Z2=zeros(100,1000);
    for i=1:res
        Z1(i,:)=(cell2mat(xx(i,j))-cell2mat(p.HR_nom)) ./ cell2mat((p.HR_nom));
        Z2(i,:)=(cell2mat(yy(i,j))-cell2mat(p.BP_nom)) ./ cell2mat((p.BP_nom));
    end
    figure(j)
    colormap(bone)
    contourf(Z1)
    colorbar
    title(ss(j))
end
