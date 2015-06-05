function out=fparamsens(p,param)
% q=input;
% p.C_a       = q(1);
% p.C_v       = q(2);
% p.R0_a      = q(3);
% p.R_v       = q(4);
% p.DeltaV    = q(5);
% p.tau       = q(8);
% p.V_H       = q(9);
% p.Betta_H   = q(10);
% p.Alpha     = p(13);
% p.Gamma     = q(14);
% p.Delta_h   = q(15);
% p.IHR       = q(6);
% p.MAP       = q(7);
% p.P_init    = q(11);
% p.HR_init   = q(12);
% p.sig_sp    = q(16);
% p.sig_Alpha = q(17);

%%
pp=[p.C_a; p.C_v; p.R0_a; p.R_v; p.DeltaV; p.IHR; p.MAP; p.tau; ...
    p.V_H; p.Betta_H; p.P_init; p.HR_init; p.Alpha; p.gamma; p.Delta_h; p.sig_sp; p.sig_Alpha];

%% Nominal value
result=feqnsolver(pp);
BP=cell2mat(result(1));
HR=cell2mat(result(2));
p.HR_nom=HR;
p.BP_nom=BP;
p.HR_nominal=HR(end);
p.BP_nominal=BP(end);
%%
% ss=[{'p.C_a'},{'p.C_v'},{'p.R0_a'},{'p.R_v'},{'p.DeltaV'},{'p.IHR'},{'p.MAP'},{'p.tau'},...
%     {'p.V_H'},{'p.Betta_H'},{'p.P_{init}'},{'p.HR_{init}'},{'p.Alpha'},{'p.Gamma'},{'p.Delta_h'},{'p.sig_{sp}'},{'p.sig_{Alpha}'}];
%% sensititvty for steady state value
%     x(i,param)=HR(end);
%     y(i,param)=BP(end);
% for j=1:length(pp)
%     var=(1-w)*pp(j)+ 2*(w)*pp(j)*([1:res]-1)./res;
%     var=var';
%     SS_HR=( (x(:,j)-p.HR_nominal) /p.HR_nominal ); %./( (var-pp(j))./ pp(j) );
%     SS_BP=( (y(:,j)-p.BP_nominal) /p.BP_nominal ); %./( (var-pp(j))./ pp(j) );
% end

%%
res=50;
w=0.1;

clear x; clear y;

input=pp;
Z1=zeros(50,120);
Z2=zeros(50,120);
for i=1:res
    input(param)=(1-w)*pp(param)+2*(w)*pp(param)*i/res;
    result=feqnsolver(input);
    BP=cell2mat(result(1));
    HR=cell2mat(result(2));
    Z1(i,:)=abs(HR-p.HR_nom) ./ (p.HR_nom);
    Z2(i,:)=abs(BP-p.BP_nom) ./ (p.BP_nom);
end
Z3=sqrt(sum(Z1.^2));
% 
% figure(100);
% hold on;
% plot(Z3);
% find(0.9*Z3(end)<Z3<1.1*Z3(end))



Z4=sqrt(sum(Z2.^2));
out=[{Z1},{Z2},{Z3},{Z4}];