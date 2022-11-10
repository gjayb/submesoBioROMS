%% load options
caseswitch=3; 
%1 for figure 9, delta 250; 2 for figure 10, delta 63; 3 for S7

switch caseswitch
    case 1
filemid={'a','b','c','d','e','f','g'};%,'h'};
filestart0='pset_10_4km_bipit_del250_';
filestart0v='pset_10_4km_bipit_del250_64visc_';
filestart1='pset_10_4km_bipit_del250_2100_v3_';
filestart1v='pset_10_4km_bipit_del250_2100_v3_64visc_';
fileend='_his.mat';
fileend0='_his.mat';
w=-5;
    case 2
filemid={'a','b','c','d','e','f','g','h'};
filestart0='pset_10_4km_bipit_del63_';
filestart0v='pset_10_4km_bipit_del63_64visc_';
filestart1='pset_10_4km_bipit_del63_2100_v3_';
filestart1v='pset_10_4km_bipit_del63_2100_v3_64visc_';
fileend='_his.mat';
fileend0='_hisV2.mat';
w=-1.26;
    case 3
filemid={'a','b','c','d','e','f','g'};%,'h'};
filestart0='pset_10_4km_bipit_del250_';
filestart0v='pset_10_4km_bipit_del250_64visc_';
filestart1='pset_10_4km_bipit_del250_2100_';
filestart1v='pset_10_4km_bipit_del250_2100_64visc_';
fileend='_his.mat';
fileend0='_his.mat';
w=-5;
end
%% load
fct=1;
fn=strcat(filestart1v,filemid{fct},fileend);
load(fn,'varmeans','ocean_time')
time=ocean_time;
wsp1v=w*varmeans.p(11,:)./86400;
wp1v=varmeans.wp(11,:);
wppp1v=varmeans.wppp(11,:);
fn=strcat(filestart1,filemid{fct},fileend);
load(fn,'varmeans')
wsp1=w*varmeans.p(11,:)./86400;
wp1=varmeans.wp(11,:);
wppp1=varmeans.wppp(11,:);
fn=strcat(filestart0,filemid{fct},fileend0);
load(fn,'varmeans')
wsp0=w*varmeans.p(11,:)./86400;
wp0=varmeans.wp(11,:);
wppp0=varmeans.wppp(11,:);
fn=strcat(filestart0v,filemid{fct},fileend);
load(fn,'varmeans','ocean_time')
time0v=ocean_time;
wsp0v=w*varmeans.p(11,:)./86400;
wp0v=varmeans.wp(11,:);
wppp0v=varmeans.wppp(11,:);

for fct=2:7
fn=strcat(filestart1v,filemid{fct},fileend);
load(fn,'varmeans','ocean_time')
time=cat(1,time,ocean_time);
wsp1v=cat(2,wsp1v,w*varmeans.p(11,:)./86400);
wp1v=cat(2,wp1v,varmeans.wp(11,:));
wppp1v=cat(2,wppp1v,varmeans.wppp(11,:));
fn=strcat(filestart1,filemid{fct},fileend);
load(fn,'varmeans')
wsp1=cat(2,wsp1,w*varmeans.p(11,:)./86400);
wp1=cat(2,wp1,varmeans.wp(11,:));
wppp1=cat(2,wppp1,varmeans.wppp(11,:));
fn=strcat(filestart0v,filemid{fct},fileend);
load(fn,'varmeans','ocean_time')
time0v=cat(1,time0v,ocean_time);
wsp0v=cat(2,wsp0v,w*varmeans.p(11,:)./86400);
wp0v=cat(2,wp0v,varmeans.wp(11,:));
wppp0v=cat(2,wppp0v,varmeans.wppp(11,:));
fn=strcat(filestart0,filemid{fct},fileend0);
load(fn,'varmeans')
wsp0=cat(2,wsp0,w*varmeans.p(11,:)./86400);
wp0=cat(2,wp0,varmeans.wp(11,:));
wppp0=cat(2,wppp0,varmeans.wppp(11,:));
end

if length(filemid)==8
    fct=8;
    fn=strcat(filestart0v,filemid{fct},fileend);
    load(fn,'varmeans','ocean_time')
    time0v=cat(1,time0v,ocean_time);
    wsp0v=cat(2,wsp0v,w*varmeans.p(11,:)./86400);
    wp0v=cat(2,wp0v,varmeans.wp(11,:));
    wppp0v=cat(2,wppp0v,varmeans.wppp(11,:));
    fn=strcat(filestart0,filemid{fct},fileend);
end


day0=5+time/86400;
day1=day0;
day0v=5+time0v/86400;
%% plot

figure
subplot(4,1,1)
plot(day0,wsp0+wp0,'LineWidth',2)
hold on; plot(day0v,wsp0v+wp0v)
y1=get(gca,'YLim');
set(gca,'fontsize',12)
ylabel({'total','mmol P m/s'})
yyaxis right
plot(day1,wsp1+wp1,'LineWidth',2)
plot(day1,wsp1v+wp1v,'m')
ylim(0.1*y1);
datetick('x',3)
xlim([4052 5310])


subplot(4,1,2)
plot(day0,wsp0,'LineWidth',2)
hold on; plot(day0v,wsp0v)
y2=get(gca,'YLim');
set(gca,'fontsize',12)
ylabel({'w_sP','mmol P m/s'})
yyaxis right
plot(day1,wsp1,'LineWidth',2)
plot(day1,wsp1v,'m')
ylim(0.1*y2);
datetick('x',4)
xlim([4052 5310])

subplot(4,1,3)
plot(day0,wp0,'LineWidth',2)
hold on; plot(day0v,wp0v)
y3=get(gca,'YLim');
set(gca,'fontsize',12)
ylabel({'wP','mmol P m/s'})
yyaxis right
plot(day1,wp1,'LineWidth',2)
plot(day1,wp1v,'m')
ylim(0.1*y3);
datetick('x',3)
xlim([4052 5310])

subplot(4,1,4)
plot(day0,wppp0,'LineWidth',2)
hold on; plot(day0v,wppp0v)
y4=get(gca,'YLim');
set(gca,'fontsize',12)
ylabel({'wP','mmol P m/s'})
yyaxis right
plot(day1,wppp1,'LineWidth',2)
plot(day1,wppp1v,'m')
ylim(0.05*y4);
datetick('x',4)
xlim([4052 5310])
xlabel('simulation month')
legend('2000','2000 visc','2100','2100 visc')