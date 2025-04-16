close all;

clear all; 

f=figure;
set(f, 'Position',[1,1,1020,796])
subplot(3,1,1)


 Filenumber=10410;
 Background=0.53;

%Filenumber=10417;
%Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');

Directory_pop='/Users/gilalexandrowicz/Documents/NCOMMS2025_editorial_response/Directory/';  %change this directory to the one you store the population files in. 

eval(['load(''' Directory_pop 'populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat'')']);

I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color2='b'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color1 '*'',''MarkerSize'',12)'])
a=linspace(1.22,2,31);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference1(index)=sum((total_interp-m1).^2);
end

[dummy,minindex1]=min(difference1);
['alpha for 100K hiden =' num2str(a(minindex1))]
total=mJ1+mJm1+a(minindex1)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color1,'LineWidth',2);



% Filenumber=10410;
Filenumber=[10411 10412 10413 10414];
 Background=0.17;

%Filenumber=10417;
%Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');

eval(['load(''' Directory_pop 'populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat'')']);

%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1513_fwhm_0.07_RGA_Hex_100K.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat');

I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color2='b'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color2 'd'',''MarkerSize'',12)'])
a=linspace(1.22,2,31);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference2(index)=sum((total_interp-m1).^2);
end

[dummy,minindex2]=min(difference2);
%a(minindex)
['alpha for 100K RGA =' num2str(a(minindex2))]
total=mJ1+mJm1+a(minindex2)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color2,'LineWidth',2);







ylabel('Normalised signal')
xlabel('\it{I_1}(A)')

text(-0.045,1.02,'(a)','FontSize',14)

ax = gca; 
ax.FontSize = 14; 



%title([ '\alpha=' num2str(round(a(minindex1),1)) ' for \theta_{total} =45^o  and \alpha=' num2str(round(a(minindex2),1)) ' for for \theta_{total}=22.5^o ']);


%clear all; 
subplot(3,1,2)


% Filenumber=10410;
% Background=0.53;

%%Filenumber=10417;
%%Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');
%I1=B1/111.8297;


Filenumber=[10518 10519 10520 10521 10522];
Background=0.61;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_140K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1786_fwhm_0.078_Hiden_Hex_140K.mat');
eval(['load(''' Directory_pop 'populations_Vm1786_fwhm_0.078_Hiden_Hex_140K.mat'')']);
I1=B1/111.8297;


%I1=Mj_1(:,1)/111.8297;
color1='g';
color2='b';

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color1 '>'',''MarkerSize'',12)'])
a=linspace(1,2.5,61);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference1(index)=sum((total_interp-m1).^2);
end

[dummy,minindex1]=min(difference1);
['alpha for 140K hiden =' num2str(a(minindex1))]

%eval(['alpha for 140K =' num2str(a(minindex1))])

%a(minindex1)=1.4;
total=mJ1+mJm1+a(minindex1)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color1,'LineWidth',2);



% Filenumber=10410;
% Background=0.53;

Filenumber=10417;
Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1344_fwhm_0.069_Hiden_Hex_80K.mat');
eval(['load(''' Directory_pop 'populations_Vm1344_fwhm_0.069_Hiden_Hex_80K.mat'')']);

I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color2='k'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color2 'd'',''MarkerSize'',8)'])
a=linspace(1,2.5,61);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference2(index)=sum((total_interp-m1).^2);
end

[dummy,minindex2]=min(difference2);
%a(minindex)
['alpha for 80K hiden =' num2str(a(minindex2))]

%a(minindex2)=1.4;
total=mJ1+mJm1+a(minindex2)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color2,'LineWidth',2);



Filenumber=10410;
Background=0.53;

%Filenumber=10417;
%Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat');
eval(['load(''' Directory_pop 'populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat'')']);


I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color3='m'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color3 '*'',''MarkerSize'',8)'])
a=linspace(1,2.5,61);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference2(index)=sum((total_interp-m1).^2);
end

[dummy100K,minindex3]=min(difference2)
%a(minindex)
['alpha for 100K hiden =' num2str(a(minindex3))]
%a(minindex2)=1.4;
total=mJ1+mJm1+a(minindex3)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color3,'LineWidth',2);


%title([ '\alpha=' num2str(round(a(minindex1),1)) ' for 140K and  \alpha=' num2str(round(a(minindex2),1)) ' for 80K ']);
%title([ '\alpha=' num2str(round(a(minindex1),2)) ' for 140K and  \alpha=' num2str(round(a(minindex2),2)) ' for 80K and  \alpha=' num2str(round(a(minindex3),2)) ' for 100K ']);
% subplot(2,1,2)
% plot(I1,mJ1,'m');hold on;plot(I1,mJ0,'g');plot(I1,mJm1,'b')

ylabel('Normalised signal')
xlabel('\it{I_1}(A)')

text(-0.045,1.02,'(b)','FontSize',14)

ax = gca; 
ax.FontSize = 14; 



%clear all; 
subplot(3,1,3)


 Filenumber=10410;
 Background=0.53;

%Filenumber=10417;
%Background=0.46;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat');
eval(['load(''' Directory_pop 'populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat'')']);
I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color2='b'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color1 '*'',''MarkerSize'',8)'])
a=linspace(1.22,2,31);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference1(index)=sum((total_interp-m1).^2);
end

[dummy,minindex1]=min(difference1);
%a(minindex)
total=mJ1+mJm1+a(minindex1)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color1,'LineWidth',2);



% Filenumber=10410;
% Background=0.53;

Filenumber=[10455,10456,10457,10458,10459];
Background=0.38;
%load '/Users/gilalexandrowicz/Documents/MATLAB/trajectory_cal_3nd_gen/Mj_pops.mat'
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_80K_Hiden.mat');
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/populations_100K_Hiden.mat');
eval(['load(''' Directory_pop 'populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat'')']);
%load('/Users/gilalexandrowicz/Downloads/OneDrive_1_26-09-2024/populations_Vm1513_fwhm_0.07_Hiden_Hex_100K.mat');


I1=B1/111.8297;

%I1=Mj_1(:,1)/111.8297;
color1='m'
color2='b'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
%subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color2 'd'',''MarkerSize'',8)'])
a2=linspace(0.7,1,101);
for index=1:length(a2);
total=mJ1+mJm1+a2(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference(index)=sum((total_interp-m1).^2);
end

[dummy,minindex2]=min(difference);
%a(minindex)
total=mJ1+mJm1+a2(minindex2)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color2,'LineWidth',2);



ylabel('Normalised signal')
xlabel('\it{I_1}(A)')

text(-0.045,1.02,'(c)','FontSize',14)

ax = gca; 
ax.FontSize = 14; 







%title([ '\alpha=' num2str(round(a(minindex1),1))  ' for surface temp=500K  \alpha=' num2str(round(a2(minindex2),2)) ' for surface temp=180K  ']);
exportgraphics(f,'/Users/gilalexandrowicz/Downloads/Fig3.png','Resolution',300)
