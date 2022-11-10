load('spectra_10_4km_bipit_del250_64visc.mat')
ocean_day=(time)/(24*3600)+5;
logrb=log10(radialbands);
yeari=[109:352; 353:596; 597:840]; %or yeari=[109:351; 352:594; 595:837; 838:1080];
zi=21; %200m
%% KEH
figure
logkehp=log10(squeeze(keh(:,zi,:)));
ci=[-0.5:0.1:3.5];
cc=[-0.5 3.5];
logkehp(logkehp<min(ci))=min(ci);
contourf(ocean_day,logrb,logkehp,ci)
hold on
contour(ocean_day,logrb,logkehp,ci)
caxis(cc)
colormap(jet(length(ci)-1));
colorbar
set(gca,'YDir','reverse','FontSize',14)
ylabel('cyc/m','FontSize',14)
title('KE_H, 200m')
xlim([ocean_day(1) ocean_day(end)])
ylim([logrb(2) logrb(end)])
datetick('x',3,'keeplimits')