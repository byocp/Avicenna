function out=paramiden(sig1,sig2)
%sig1: HR   sig2: BP

%% Recursive Least Square
SimL=length(sig1);
ro=0.99; %
LMScoef=.005;
% Weight=ones(SimL,1);
for i=1:SimL
    Weight(SimL-i+1)=ro^i;
end

%**************************************************************************
TETA_Sum=[0;0;0;0];
for i=1:100
clear PN; clear saync;
PN = gallery('gcdmat',4);
TETA(:,1)=rand(4,1);
TETA_LMS(:,1)=rand(4,1);
for j=2:SimL
    saync=[sig1(j); sig1(j)/(1+sig2(j-1)^5); -(sig2(j)-sig2(j-1))/(1+sig2(j-1)^5); -(sig2(j)-sig2(j-1));];
    TETA(:,j)=TETA(:,j-1)+((PN*saync)/(1/Weight(j)+saync'*PN*saync))*(sig2(j)-saync'*TETA(:,j-1));
    PN=PN-(PN*saync*saync'*PN)/(1/Weight(j)+saync'*PN*saync);
    TETA_LMS(:,j)=TETA_LMS(:,j-1)+LMScoef*saync*(sig2(j)-saync'*TETA_LMS(:,j-1)); %Gain=Constant
end
TETA_Sum=TETA(:,SimL)+TETA_Sum;
end
TETA_Mean=TETA_Sum./100
%**************************************************************************
%Comparing the chosen coef and whatever were concluded from two kind of RLS
%[TETAMAIN TETA TETA_LMS]

%% 

out1=[TETA_LMS(1,:);TETA_LMS(2,:)./TETA_LMS(1,:);TETA_LMS(3,:)./TETA_LMS(4,:);TETA_LMS(4,:)];
out2=[TETA(1,:);TETA(2,:)./TETA(1,:);TETA(3,:)./TETA(4,:);TETA(4,:)];
out=out2;

% figure(1)
% plot(out(1,:),'b','LineWidth',1.5)
% hold on
% plot(out(2,:),'r','LineWidth',1.5)
% hold on
% plot(out(3,:),'g','LineWidth',1.5)
% hold on
% plot(out(4,:),'k','LineWidth',1.5)


% for i=1:10
% TETA(:,1)= TETA(:,SimL);  
% TETA_LMS(:,1)=TETA_LMS(:,SimL);
% clear PN; clear saync; 
% PN = gallery('gcdmat',4);
% for j=2:SimL
%     saync=[sig1(j); sig1(j)/(1+sig2(j-1)^5); -(sig2(j)-sig2(j-1))/(1+sig2(j-1)^5); -(sig2(j)-sig2(j-1));];
%     TETA(:,j)=TETA(:,j-1)+((PN*saync)/(1/Weight(j)+saync'*PN*saync))*(sig2(j)-saync'*TETA(:,j-1));
%     PN=PN-(PN*saync*saync'*PN)/(1/Weight(j)+saync'*PN*saync);
%     TETA_LMS(:,j)=TETA_LMS(:,j-1)+LMScoef*saync*(sig2(j)-saync'*TETA_LMS(:,j-1)); %Gain=Constant
% end
% out1=[TETA_LMS(1,:);TETA_LMS(2,:)./TETA_LMS(1,:);TETA_LMS(3,:)./TETA_LMS(4,:);TETA_LMS(4,:)];
% out2=[TETA(1,:);TETA(2,:)./TETA(1,:);TETA(3,:)./TETA(4,:);TETA(4,:)];
% 
% out=out2;
% figure(1)
% plot([i*SimL:(i+1)*SimL-1],out(1,:),'b','LineWidth',1.5)
% hold on
% plot([i*SimL:(i+1)*SimL-1],out(2,:),'r','LineWidth',1.5)
% hold on
% plot([i*SimL:(i+1)*SimL-1],out(3,:),'g','LineWidth',1.5)
% hold on
% plot([i*SimL:(i+1)*SimL-1],out(4,:),'k','LineWidth',1.5)
% end


end


function out=Ai(X)

x1=X(2); x2=X(1); x3=X(2)-X(1); x4=X(4); x5=X(3); x6=X(4)-X(3);
x7=1/(1+x5^5);
x8=1-1/(1+x4^5);
x9=x3*x8;
x10=x8^2; 
x11=x6*x7; 
x12=x1*x7; 
x13=x1*x8;

out=[x3,x9,-x7,x8,x10,x1-1,x13-x8,0 ,0  , 0 , 0   ;
     0 , 0,  0, 0, 0 , 0  , 0    ,x6,x11,-x1,-x12];
 out=out+0.000000001.*abs(rand(2,11));
end

function out=Bi(X)
x4=X(4); 
out=[0;-x4];
end
