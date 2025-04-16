function [Iscan,m1,er1] = analysing_flux_detection_data_combination_function(Filenumber)

Directory_pop='/Users/gilalexandrowicz/Documents/NCOMMS2025_editorial_response/Directory/';  %change this directory to the one you store the supplied data file in. 

%clear all
regular_plot=1;
% figure
%close all
%Filenumber=[10142 10143 10144];color1='g';%9.97
%Filenumber=[10150 10151 10152];
%Filenumber=[10157 10158 10159];
%Filenumber=[10137];
%Filenumber=[10163 10164 10165 10166 10167 10168];
%Filenumber=[10171 10172 10173 10174 10175 10176]
%Filenumber=[10177 10178 10179 10180 10181 10182]
%Filenumber=[10183 10184 10185 10186 10187 10188]
%Filenumber=[10189 10190 10191 10192 10193 10194]
%Filenumber=[10307 10308 10309 10310 10311 10312]
%Filenumber=[10317 10318 10319 10320 10321]
%Filenumber=[10331 10332 10333 10334]
%Filenumber=[10340 10341 10342 1034/home/sudy/data/Ni111_4/dy010401.dat3]
%Filenumber=[10352 10353 10354 10355 10356 10357]
%Filenumber=[10362 10363 10364 10365 10366 10367 10368]
%Filenumber=[10411 10412 10413 10414]; color1='r'
%Filenumber=[10202]; color1='c';%9.97
%Filenumber=[10210]; color1='k'; %-2.7
%Filenumber=[10212]; color1='g'; %-4.2
%Filenumber=[10215]; color1='r';%1
%Filenumber=[10244]; color1='r';%9.97
%Filenumber=[10131]; color1='r';%9.97
%Filenumber=[10136]; color1='r';%9.97
%Filenumber=[10313]; color1='r';%9.97data3
%Filenumber=[10314]; color1='r';%9.97
%Filenumber=[10161]; color1='r';%9.97
%Filenumber=[10316]; color1='r';%9.97
%Filenumber=[10323]; color1='r';%9.97
% Filenumber=[10307 10308 10309 10310 10311 10312]; color1='g'
% Filenumber=[10163 10164 10165 10166 10167 10168]; color1='r'
% Filenumber=[10411 10412 10413 10414]; color1='k'
%Filenumber=[10410]; color1='r'

color1='b';%9.97

for index_ext=1:length(Filenumber)
%eval(['filename=''/home/sudy/data/Ni111_4/dy0' num2str(Filenumber(index_ext)) '.dat'';']);
%eval(['filename=''/Users/gilalexandrowicz/Documents/MATLAB/Ni111_4/dy0' num2str(Filenumber(index_ext)) '.dat'';']);
%eval(['filename=''/Users/gilalexandrowicz/Documents/MATLAB/dy0' num2str(Filenumber(index_ext)) '.dat'';']);

eval(['filename=''' Directory_pop 'dy0' num2str(Filenumber(index_ext)) '.dat'';']);

first_point=4;
firstloop=1;

[Iscan,counts,datavecX,lam,spec_lamX]=read_current_scan_h2_new4(filename,1);
lastloop=size(datavecX,1);
%lastloop=5;


datamat=squeeze(datavecX(firstloop:lastloop,:,1));

for index=1:size(datamat,1)
b=polyfit(Iscan(first_point:end),datamat(index,first_point:end),2);
fitpar=b(3)*ones(1,length(Iscan))+b(2)*Iscan+b(1)*Iscan.^2;
datamat_dc(index,1:length(Iscan))=datamat(index,:)./fitpar;
end

if index_ext==1
m1=mean(datamat_dc,1);
s=std(datamat_dc,1);
l=size(datamat_dc,1);
else
    m1=m1+mean(datamat_dc,1);
    s=s+std(datamat_dc,1);
    l=l+size(datamat_dc,1);
end
end

m1=m1/length(Filenumber);
s=s/length(Filenumber);
   
er1=s/sqrt(l);

%figure
%plot(Iscan,m1,'ms')
% hold on
% if regular_plot
% eval(['errorbar(Iscan,m1,s/sqrt(l),''' color1 '*-'')'])
% else
%   m1=m1-mean(m1);
%   s=s/max(m1);
%   m1=m1/max(m1);
%   errorbar(Iscan,m1,s/sqrt(l),'ob-')
% end
