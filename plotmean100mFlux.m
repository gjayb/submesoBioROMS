%% plot mean vertical fluxes, all model runs
%colormap uses cmocean's thermal
%% load
load('exportfluxmeansV2.mat')
%% colors
c1=cmocean('thermal',6);
cmap1=zeros(21,3);
cmap1(1:3,:)=c1(1:3,:);
cmap1(4:8,:)=repmat(c1(4,:),[5 1]);
cmap1(9:16,:)=repmat(c1(5,:),[8 1]);
cmap1(17:21,:)=repmat(c1(6,:),[5 1]);
%% plot
figure;
subplot(2,2,1)
scatter(125*ones(5,1),sum(fluxmeansdel125(:,1:2),2),25,wsdel125,'filled') %delta 125 set, varied tau and ws
colormap(cmap1)
caxis([0 21])
hold on
plot(50*ws,sum(fluxmeans4ws(:,1:2),2),'k') %tau 50 set, varied ws
scatter(50*ws,sum(fluxmeans4ws(:,1:2),2),25,ws,'filled') %tau 50 set, varied ws
plot(63,sum(fluxmeans63v2(2,1:2),2),'square','MarkerSize',5,'MarkerFaceColor',cmap1(2,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del63
plot(250,sum(fluxmeans250cesm(2,1:2),2),'square','MarkerSize',5,'MarkerFaceColor',cmap1(4,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del250
plot(63,sum(fluxmeans63v2(3,1:2),2),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(2,:)) %2100 standard, del63
plot(250,sum(fluxmeans250woa(3,1:2),2),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(4,:)) %2100 standard, del250
plot(63,sum(fluxmeans63v2(4,1:2),2),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(2,:)) %2100 viscous, del63
plot(250,sum(fluxmeans250woa(4,1:2),2),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(4,:)) %2100 viscous, del250
set(gca,'fontsize',12)
ylabel('mmol P m/s')
xlabel('\delta')
title('Total')

subplot(2,2,2)
scatter(125*ones(5,1),fluxmeansdel125(:,1),25,wsdel125,'filled') %delta 125 set, varied tau and ws
colormap(cmap1)
caxis([0 21])
hold on
plot(50*ws,fluxmeans4ws(:,1),'k') %tau 50 set, varied ws
scatter(50*ws,fluxmeans4ws(:,1),25,ws,'filled') %tau 50 set, varied ws
plot(63,fluxmeans63v2(2,1),'square','MarkerSize',5,'MarkerFaceColor',cmap1(2,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del63
plot(250,fluxmeans250cesm(2,1),'square','MarkerSize',5,'MarkerFaceColor',cmap1(4,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del250
plot(63,fluxmeans63v2(3,1),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(2,:)) %2100 standard, del63
plot(250,fluxmeans250woa(3,1),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(4,:)) %2100 standard, del250
plot(63,fluxmeans63v2(4,1),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(2,:)) %2100 viscous, del63
plot(250,fluxmeans250woa(4,1),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(4,:)) %2100 viscous, del250
set(gca,'fontsize',12)
xlabel('\delta')
title('w_sP')
colorbar

subplot(2,2,3)
scatter(125*ones(5,1),fluxmeansdel125(:,2),25,wsdel125,'filled') %delta 125 set, varied tau and ws
colormap(cmap1)
caxis([0 21])
hold on
plot(50*ws,fluxmeans4ws(:,2),'k') %tau 50 set, varied ws
scatter(50*ws,fluxmeans4ws(:,2),25,ws,'filled') %tau 50 set, varied ws
plot(63,fluxmeans63v2(2,2),'square','MarkerSize',5,'MarkerFaceColor',cmap1(2,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del63
plot(250,fluxmeans250cesm(2,2),'square','MarkerSize',5,'MarkerFaceColor',cmap1(4,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del250
plot(63,fluxmeans63v2(3,2),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(2,:)) %2100 standard, del63
plot(250,fluxmeans250woa(3,2),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(4,:)) %2100 standard, del250
plot(63,fluxmeans63v2(4,2),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(2,:)) %2100 viscous, del63
plot(250,fluxmeans250woa(4,2),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(4,:)) %2100 viscous, del250
set(gca,'fontsize',12)
xlabel('\delta')
title('wP')
ylabel('mmol P m/s')

subplot(2,2,4)
scatter(125*ones(5,1),fluxmeansdel125(:,3),25,wsdel125,'filled') %delta 125 set, varied tau and ws
colormap(cmap1)
caxis([0 21])
hold on
plot(50*ws,fluxmeans4ws(:,3),'k') %tau 50 set, varied ws
scatter(50*ws,fluxmeans4ws(:,3),25,ws,'filled') %tau 50 set, varied ws
plot(63,fluxmeans63v2(2,3),'square','MarkerSize',5,'MarkerFaceColor',cmap1(2,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del63
plot(63,fluxmeans63v2(3,3),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(2,:)) %2100 standard, del63
plot(63,fluxmeans63v2(4,3),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(2,:)) %2100 viscous, del63
plot(250,fluxmeans250cesm(2,3),'square','MarkerSize',5,'MarkerFaceColor',cmap1(4,:),'MarkerEdgeColor',[0 0 0]) %2000 viscous, del250
plot(250,fluxmeans250woa(3,3),'p','MarkerSize',5,'MarkerEdgeColor',cmap1(4,:)) %2100 standard, del250
plot(250,fluxmeans250woa(4,3),'square','MarkerSize',6,'MarkerEdgeColor',cmap1(4,:)) %2100 viscous, del250
set(gca,'fontsize',12)
xlabel('\delta')
title('w_sP')
colorbar
legend('\delta 125','\tau 50','\tau 50','viscous','2100','2100 viscous')
