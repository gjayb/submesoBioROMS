%plot figures for particle flux at 100m with varied parameters
%% varied ws, constant tau=50days
load('wP2000variedws.mat')
%%
figure; 
subplot(4,1,1)
plot(day,wP63-wsP63,day,wP125-wsP125,day,wP0-wsP0,day,wP500-wsP500)
datetick('x',3)
ylabel({'total';'mmol P m/s'})
title('domain-mean wP and components')
legend('w_s=1.26m/day','2.5','5','10')
axis tight
subplot(4,1,2)
plot(day,-wsP63,day,-wsP125,day,-wsP0,day,-wsP500)
datetick('x',4)
ylabel({'w_sP';'mmol P m/s'})
axis tight
subplot(4,1,3)
plot(day,wP63,day,wP125,day,wP0,day,wP500)
datetick('x',3)
ylabel({'wP';'mmol P m/s'})
axis tight
subplot(4,1,4)
plot(day,wpPp63,day,wpPp125,day,wpPp0,day,wpPp500)
datetick('x',4)
ylabel({'wP';'mmol P m/s'})
axis tight
%% constant del=125, varied ws and tau
load('wP2000variedtau.mat')
%%
figure; 
subplot(4,1,1)
plot(day,wP200-wsP200,day,wP100-wsP100,day,wP50-wsP50,day,wP25-wsP25,day,wP6-wsP6)
datetick('x',3)
ylabel({'total';'mmol P m/s'})
title('domain-mean wP and components')
axis tight
subplot(4,1,2)
plot(day,-wsP200,day,-wsP100,day,-wsP50,day,-wsP25,day,-wsP6)
datetick('x',4)
ylabel({'w_sP';'mmol P m/s'})
axis tight
subplot(4,1,3)
plot(day,wP200,day,wP100,day,wP50,day,wP25,day,wP6)
datetick('x',3)
ylabel({'wP';'mmol P m/s'})
axis tight
legend('w_s=0.625m/day','1.25','2.5','5','20.83')
subplot(4,1,4)
plot(day,wpPp200,day,wpPp100,day,wpPp50,day,wpPp25,day,wpPp6)
datetick('x',4)
ylabel({'wP';'mmol P m/s'})
axis tight
legend('\tau=200 days','100','50','25','6')


