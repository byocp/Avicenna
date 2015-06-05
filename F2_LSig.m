%% Name: PEDRAM ATAEE             -            UBC Student Number: 32120073
%**************************************************************************
%                       Linearized Sigmoid
%**************************************************************************
function out= F2_LSig(varargin)
input=cell2mat(varargin);
Alpha=input(1);
P0   =input(2);

T_s = 0;  %HRmax
T_m = 1;  %HRmin
x1  = 1:200;
y =zeros(1,length(x1));
hy=zeros(1,length(x1));
%**************************************************************************
for j=1:length(x1)
    y(j) = T_s + (T_m - T_s) / (1 + exp(-1*Alpha*(x1(j)-P0)));
    hy(j)=((T_m-T_s)*Alpha/4)*(x1(j)-P0)+ T_s + (T_m - T_s)/2;
end
dy=diff(y);
ddy=diff(dy);

%**************************************************************************
% Finding two breaking points for sake of linearization
%**************************************************************************
P2=find(ddy==min(ddy));
err1=zeros(1,round(P0)-2);
for P1=2:round(P0)-1
    y1=test(x1,P1,P2,T_s,T_m,y,hy,Alpha,P0);
    err1(P1)=sum(abs(y(50:round(P0))-y1(50:round(P0))));
end

P1=find(ddy==max(ddy));
err2=zeros(1,199-round(P0));
for P2=round(P0)+1:199
    y1=test(x1,P1,P2,T_s,T_m,y,hy,Alpha,P0);
    err2(P2)=sum(abs(y(round(P0):end)-y1(round(P0):end)));
end

err=zeros(1,length(x1)-1);
for i=1:length(x1)-1
    if i<round(P0) 
        err(i)=err1(i);
    elseif i==round(P0) 
        err(i)=(err1(round(P0)-1)+err2(round(P0)+1))/2;
    elseif i>round(P0) 
        err(i)=err2(i);
    end
end
P1=find(err1==min(err1(51:end)));
P2=find(err2==min(err2(round(P0)+1:end)));

%**************************************************************************
%linearized sigmoid function versus time
%**************************************************************************
x2=x1(50:end);
for i=1:length(x2)
    y2=test(x2,P1,P2,T_s,T_m,y,hy,Alpha,P0);
end

%**************************************************************************
% Ploting 
%**************************************************************************
% % % % % f = figure('Visible','off'); %'Position',[360,500,450,285]
% % % % % set(f,'Name','Sigmoidal Baroflex') % Assign the GUI a name to appear in the window title.
% % % % % movegui(f,'center'); % Move the GUI to the center of the screen.
% % % % % subplot(2,2,1)
% % % % % plot(x1,y,'linewidth',2)
% % % % % hold on;
% % % % % plot(x1(P0-30:P0+30),hy(P0-30:P0+30),'k','linewidth',2)
% % % % % ylabel('HR [bps]','fontsize',10,'fontweight','b');
% % % % % xlabel('BP [mmHg]' ,'fontsize',10,'fontweight','b');
% % % % % grid on;
% % % % % subplot(2,2,2)
% % % % % plot(F2_Normalization(y,'norm2'),'b','linewidth',2);  % sig(x)
% % % % % hold on
% % % % % plot(F2_Normalization(dy,'norm2'),'r','linewidth',2); % d/dx(sig(x))
% % % % % hold on
% % % % % plot(F2_Normalization(ddy,'norm2'),'k','linewidth',2);% d^2/dx^2(sig(x))
% % % % % hold on;
% % % % % legend('f=sig(p)','df/dp','d^2f/dp^2');
% % % % % grid on
% % % % % subplot(2,2,3)
% % % % % plot(x2,y(50:end),'b','linewidth',2) % original function
% % % % % hold on;
% % % % % plot(x2,y2,'--k','linewidth',2)      % linearized function 
% % % % % ylabel('HR [bps]','fontsize',10,'fontweight','b');
% % % % % xlabel('BP [mmHg]' ,'fontsize',10,'fontweight','b');
% % % % % grid on;
% % % % % subplot(2,2,4)
% % % % % errorbar(x2,y2,y2-y(50:end),'k');
% % % % % ylabel('HR [bps]','fontsize',10,'fontweight','b');
% % % % % xlabel('BP [mmHg]' ,'fontsize',10,'fontweight','b');
% % % % % xlim([50,200]);
% % % % % grid on;
% % % % % set(f,'Visible','on'); % Make the GUI visible.


%**************************************************************************
% Calculating slope and y-intercept
%**************************************************************************
k1=((T_s-hy(P1))/(50-P1));
c1= hy(P1) - k1 * P1;
k2=((T_m-T_s)*Alpha/4) ;
c2= hy(round(P0)) - k2 * P0;
k3=((T_m-hy(P2))/(200-P2));
c3= hy(P2) - k3 * P2;

out={[k1, c1, P1],[k2, c2, P0],[k3, c3, P2]};

end
%**************************************************************************
function out=test(x1,P1,P2,T_s,T_m,y,hy,Alpha,P0) % Linearized sigmoid
y1=zeros(1,length(x1));
for i=1:length(x1)
    if x1(i)<P1
        y1(i)= ((y(51)-hy(P1))/(50-P1)) *(x1(i)-P1) + hy(P1);
    end
    if x1(i)<=P2 && x1(i)>=P1
        y1(i)= ((T_m-T_s)*Alpha/4)    *(x1(i)-P0) + hy(round(P0));
    end
    if x1(i)>P2
        y1(i)= ((y(end)-hy(round(P2)))/(200-P2))*(x1(i)-P2) + hy(round(P2));
    end
end
out=y1;
end