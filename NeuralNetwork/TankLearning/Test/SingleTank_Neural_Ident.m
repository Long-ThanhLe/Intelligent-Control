% Programmed by   : Huynh Thai Hoang, University of Technology at Ho Chi Minh City.
% Last updated    : April 3, 2004


load SingleTank_Data;         %estimation data
K=length(u);

X=[u(2:K-1)';y(2:K-1)';u(1:K-2)';y(1:K-2)'];
D=y(3:K)';

Net=newff(X,D,5,{'tansig','purelin'});

Net.trainParam.goal=0.001;
Net=train(Net,X,D);

gensim(Net)

%save SingleTank_NNetModel.mat Net

% ysim_ue=zeros(N,1);
% for t=2:N,
%     ysim_ue(t) = sim(Net,[ue(t-1);ysim_ue(t-1)]);
% end;
% 
% ysim_uv=zeros(N,1);
% for t=2:N,
%     ysim_uv(t) = sim(Net,[uv(t-1);ysim_uv(t-1)]);
% end;
% 
% VAF1=1-((ysim_ue-ye)'*(ysim_ue-ye))/((ye-mean(ye))'*(ye-mean(ye)))
% VAF2=1-((ysim_uv-yv)'*(ysim_uv-yv))/((yv-mean(yv))'*(yv-mean(yv)))
% 
% figure;
% subplot(2,1,1);
% plot(ye,'r-');
% hold on;
% plot(ysim_ue,'b-');
% legend('System','Model');
% 
% subplot(2,1,2);
% plot(yv,'r-');
% hold on;
% plot(ysim_uv,'b-');
% legend('System','Model');

     

