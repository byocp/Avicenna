%% Name: PEDRAM ATAEE             -            UBC Student Number: 32120073
%**************************************************************************
%                         My Iterative Method
%**************************************************************************
function out= F1_My_Iter_Method(input)

% C_a       = input(1);
R0_a      = input(2);
DeltaV    = input(3);
IHR       = input(4);
% tau       = input(5);
V_H       = input(6);
Betta_H   = input(7);
BP_init    = input(8);
HR_init   = input(9);
Alpha     = input(10);
gamma     = input(11);
Delta_h   = input(12);
sig_sp    = input(13);
sig_Alpha = input(14);

Hss=zeros(1,60);
Pss=zeros(1,60);
Hss(1)=HR_init;
Pss(1)=BP_init;
for i=2:60
    %     out_LSig2=F2_LSig([sig_Alpha,sig_sp,Pss(i-1)]);
    %     coef=out_LSig2(1:2);
    %     k=coef(1);
    %     c=coef(2);
    %     Pss(i)= (1+Alpha*(1- (k*Pss(i-1)+c) ))*R0_a*DeltaV*Hss(i-1);
    %     Hss(i)= (-1/Delta_h)*( V_H * (k*Pss(i-1)+c)   - Betta_H * (1- (k*Pss(i-1)+c) ) - Delta_h * IHR);
    Psig =1./(1+exp(-sig_Alpha.*(Pss(i-1)-sig_sp)));
    Hss(i)= (-1/Delta_h)*( V_H * Psig - Betta_H * (1-Psig) / (1+gamma*Psig) - Delta_h * IHR);
    Pss(i)= (1+Alpha*(1-Psig))*R0_a*DeltaV*Hss(i-1);
    %     Pss(i)=(Pss(i)+Pss(i-1))/2;
    %     Hss(i)=(Hss(i)+Hss(i-1))/2;
end
out=[{Pss},{Hss}];
end