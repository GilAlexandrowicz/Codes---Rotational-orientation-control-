clear all; 

close all;
f=figure
set(f, 'Position',[1,1,1020,796])
 Filenumber=10410;
 Background=0.53;

Directory_pop='/Users/gilalexandrowicz/Documents/NCOMMS2025_editorial_response/Directory/';  %change this directory to the one you store the population files in. 
eval(['load(''' Directory_pop 'populations_100K_Hiden.mat'')']);

%load('/Users/gilalexandrowicz/Documents/NCOMMS2025_editorial_response/Directory/populations_100K_Hiden.mat');
I1=B1/111.8297;

color1='m'

%analysing_flux_detection_data_combination_function_for_sharing

%figure(100)
subplot(2,1,1);
hold on
eval(['[Iscan,m1,er1] = analysing_flux_detection_data_combination_function_for_sharing([' num2str(Filenumber) ']);']);
m1=m1-Background;newmean=mean(m1);m1=m1./newmean;er1=er1/newmean;
eval(['errorbar(Iscan,m1,er1,''' color1 '*--'',''MarkerSize'',12),''LineWidth'',4'])
a=linspace(1.22,2,31);
for index=1:length(a);
total=mJ1+mJm1+a(index)*mJ0;
total=total/mean(total);
%hold on; plot(I1,total);
total_interp=interp1(I1,total,Iscan);
difference(index)=sum((total_interp-m1).^2);
end

[dummy,minindex]=min(difference);
a(minindex)
total=mJ1+mJm1+a(minindex)*mJ0;
total=total/mean(total);
hold on; plot(I1,total,color1,'LineWidth',2);
%

ylabel('Normalised signal')
xlabel('\it{I_1}(A)')

text(-0.045,1.02,'(a)','FontSize',16)

ax = gca; 
ax.FontSize = 14; 

subplot(2,1,2)
plot(I1,mJ1/mean(mJ0+mJm1+mJ1),'m-','LineWidth',2);hold on;plot(I1,mJ0/mean(mJ0+mJm1+mJ1),'g-.','LineWidth',2);plot(I1,mJm1/mean(mJ0+mJm1+mJ1),'b--','LineWidth',2)



ylabel('Fractional population')
xlabel('\it{I_1}(A)')
legend('{m_J}=1','{m_J}=0','{m_J}=-1')
text(-0.045,0.45,'(b)','FontSize',16)

ax = gca; 
ax.FontSize = 14; 

subplot(2,1,1)


