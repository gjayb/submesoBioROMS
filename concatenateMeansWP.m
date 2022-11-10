function [varmeans1] = concatenateMeansWP(startStr,midStr,endStr)
%concatenateMeans concatenates the varmeans fields for WP
%   and saves the file out, and returns varmeans1
%example: midStr={'a','b','c','d','e','f','g'};
%startStr='wpwb_10_4km_bipit_del63_';
%endStr='_np.mat';
ni=length(midStr);
load(strcat(startStr,midStr{1},endStr),'varmeans','ocean_time')
starttime=ocean_time(1);
ocean_day=(ocean_time-starttime)/86400;
varmeans1=varmeans;
varmeans1.ocean_day=ocean_day;
for ii=2:ni
    load(strcat(startStr,midStr{ii},endStr),'varmeans','ocean_time')
    ocean_day=(ocean_time-starttime)/86400;
    varmeans1.p=cat(2,varmeans1.p,varmeans.p);
    varmeans1.wp=cat(2,varmeans1.wp,varmeans.wp);
    varmeans1.wppp=cat(2,varmeans1.wppp,varmeans.wppp);
    varmeans1.ocean_day=cat(1,varmeans1.ocean_day,ocean_day);
end
fnsave=strcat(startStr,'means.mat');
save(fnsave)
end