filemid={'a','b','c','d','e','f','g'};%,'h'};
filestart='nprod_10_4km_bipit_del250_';
fileres={'','64visc_','2100_','2100_64visc_','2100_v3_','2100_v3_64visc_'};
%% loads prodn from his.mat 
fileend='_his.mat';
resi=1;
fn=strcat(filestart,filemid{1},fileend);
   load(fn,'varmeans','ocean_time');
   prod0=varmeans.prodn;
   z=varmeans.z;
   time=ocean_time;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans','ocean_time');
   prod0=cat(2,prod0,varmeans.prodn);
   time=cat(1,time,ocean_time);
end

resi=2;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod0v=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod0v=cat(2,prod0v,varmeans.prodn);
end

resi=3;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod1=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod1=cat(2,prod1,varmeans.prodn);
end

resi=4;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod1v=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod1v=cat(2,prod1v,varmeans.prodn);
end

resi=5;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod3=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod3=cat(2,prod3,varmeans.prodn);
end

resi=6;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod3v=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod3v=cat(2,prod3v,varmeans.prodn);
end

ocean_day=(time)/(24*3600)+5;
weights=[5;5;10;10;10;10;10;10;10;10;10];
prod0t=sum(prod0(1:11,:).*repmat(weights,1,259),1);
prod0vt=sum(prod0v(1:11,:).*repmat(weights,1,259),1);
prod1t=sum(prod1(1:11,:).*repmat(weights,1,259),1);
prod1vt=sum(prod1v(1:11,:).*repmat(weights,1,259),1);
prod3t=sum(prod3(1:11,:).*repmat(weights,1,259),1);
prod3vt=sum(prod3v(1:11,:).*repmat(weights,1,259),1);
%% loads prodn from avg.mat
fileend='_avg.mat';
resi=1;
fn=strcat(filestart,filemid{1},fileend);
   load(fn,'varmeans','ocean_time');
   prod0a=varmeans.prodn;
   z=varmeans.z;
   timea=ocean_time;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans','ocean_time');
   prod0a=cat(2,prod0a,varmeans.prodn);
   timea=cat(1,timea,ocean_time);
end

resi=2;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod0va=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod0va=cat(2,prod0va,varmeans.prodn);
end

resi=3;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod1a=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod1a=cat(2,prod1a,varmeans.prodn);
end

resi=4;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod1va=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod1va=cat(2,prod1va,varmeans.prodn);
end

resi=5;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans'); 
   prod3a=varmeans.prodn;
for i=2:7 %
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod3a=cat(2,prod3a,varmeans.prodn);
end

resi=6;
fn=strcat(filestart,fileres{resi},filemid{1},fileend);
 load(fn,'varmeans');
   prod3va=varmeans.prodn;
for i=2:7
   fn=strcat(filestart,fileres{resi},filemid{i},fileend);
   load(fn,'varmeans');
   prod3va=cat(2,prod3va,varmeans.prodn);
end


%% plot

figure; 
subplot(2,1,1)
plot(ocean_day,prod0t,'k',ocean_day,prod1t,'b')
hold on; plot(ocean_day,prod3t,'Color',[0.6 0.6 0.6])
plot(ocean_day,prod0vt,'k--','linewidth',2)
plot(ocean_day,prod1vt,'b--','linewidth',2)
plot(ocean_day,prod3vt,'--','Color',[0.6 0.6 0.6],'linewidth',2)
legend('2000','2100 CESMLE','2100')
set(gca,'fontsize',12)
datetick('x',3)
axis tight
ylabel('Production, mmol N/m^2')
ylim([0 9])

subplot(2,1,2)
plot(ocean_day,100*(prod3t-prod0t)./prod0t,'k')
hold on; plot(ocean_day,100*(prod1t-prod0t)./prod0t,'b')
plot(ocean_day,100*(prod3vt-prod0vt)./prod0vt,'k--','linewidth',2)
plot(ocean_day,100*(prod1vt-prod0vt)./prod0vt,'b--','linewidth',2)
set(gca,'fontsize',12)
legend('Constant N-\sigma_\theta','CESMLE anomalies')
datetick('x',3)
axis tight
ylabel('Percent Change, 2100-2000')

