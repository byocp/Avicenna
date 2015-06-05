%% Name: PEDRAM ATAEE             -            UBC Student Number: 32120073
%**************************************************************************
%                Quadratic Solution for Fowler's Model
%**************************************************************************
function out= F1_Quad_Sol(input)

% C_a       = input(1);
R0_a      = input(2);
DeltaV    = input(3);
IHR       = input(4);
% tau       = input(5);
V_H       = input(6);
Betta_H   = input(7);
% P_init    = input(8);
% HR_init   = input(9);
Alpha     = input(10);
% gamma     = input(11);
Delta_h   = input(12);
sig_sp    = input(13);
sig_Alpha = input(14);

A1=zeros(1,3);
A2=zeros(1,3);
A3=zeros(1,3);
A4=zeros(1,3);
A5=zeros(1,3);
A6=zeros(1,3);
out_LSig=F2_LSig([sig_Alpha,sig_sp]);

for j=1:3
    param=cell2mat(out_LSig(j));
    k(j)     = param(1);
    c(j)     = param(2);
    BrkPnt(j)= param(3); %Breaking Point
    %**********************************************************************
    A1(j)= c(j)*V_H + c(j)*Betta_H - Betta_H - Delta_h*IHR;
    A2(j)= k(j) *(V_H + Betta_H);
    A3(j)= 1 + Alpha - Alpha *c(j);
    A4(j)= Alpha * k(j);
    A5(j)= R0_a * DeltaV;
    A6(j)= -1/Delta_h;
    %**********************************************************************
    a(j) = A4(j)*A2(j)*A5(j)*A6(j);
    b(j) = A4(j)*A1(j)*A5(j)*A6(j) - A3(j)*A2(j)*A5(j)*A6(j) + 1;
    c(j) = -1*A1(j)*A3(j)*A5(j)*A6(j);
    %**********************************************************************
    fin_res(j,1)=sign(b(j)^2-4*a(j)*c(j));
    fin_res(j,2)=b(j)^2-4*a(j)*c(j);
    fin_res(j,3)=sign(c(j)/a(j));
    if a(j)~=0
        fin_res(j,4)=(-b(j)-sqrt(b(j)^2-4*a(j)*c(j)))/(2*a(j));
        fin_res(j,5)=(-b(j)+sqrt(b(j)^2-4*a(j)*c(j)))/(2*a(j));
    elseif a(j)<0.001
        fin_res(j,4)=-c(j)/b(j);
        fin_res(j,5)=-c(j)/b(j);
    end
    
end

flag_ped=0;
flag_shahla=0;
for j=1:3
    if fin_res(j,5)>50 &&  fin_res(j,5)<BrkPnt(1) && j==1
        Quad_Sol_P=fin_res(j,5);
        Quad_Sol_H=A6(j)*(A2(j)*Quad_Sol_P+A1(j));
        flag_shahla=flag_shahla+1;
    end
    if fin_res(j,5)>BrkPnt(1) &&  fin_res(j,5)<BrkPnt(3) && j==2
        Quad_Sol_P=fin_res(j,5);
        Quad_Sol_H=A6(j)*(A2(j)*Quad_Sol_P+A1(j));
        flag_shahla=flag_shahla+1;
    end
    if fin_res(j,5)>BrkPnt(3) &&  fin_res(j,5)<200 && j==3
        Quad_Sol_P=fin_res(j,5);
        Quad_Sol_H=A6(j)*(A2(j)*Quad_Sol_P+A1(j));
        flag_shahla=flag_shahla+1;
    end
end

if flag_shahla==0 %fin_res(j,5)>=200 || fin_res(j,5)<=50
    flag_ped=1;
    Quad_Sol_P=NaN;
    Quad_Sol_H=NaN;
end
    
out={Quad_Sol_P,Quad_Sol_H,fin_res,flag_ped,BrkPnt,flag_shahla};
end