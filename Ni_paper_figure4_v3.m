clear all;
close all;
f=figure;
set(f, 'Position',[1,1,1020,796])
load '/Users/gilalexandrowicz/Downloads/OneDrive_1_17-08-2024/stepping_data.mat'
%pos1 = [0.1 0.1 0.5 0.35];
pos1 = [0.1 0.6 0.5 0.35];

subplot('Position',pos1)
errorbar((points)*1.7,counts,err,'mo--','MarkerSize',12);
%Bpoints(1,76:100)=-0.0207;
Bpoints(1,76:100)=-0.018;;
%Bpoints(1,26:50)=-0.0207;
Bpoints(1,26:50)=-0.018;
%Bpoints(1,51:75)=-0.018;
Bpoints(1,51:75)=-0.0207;
%Bpoints(1,1:25)=-0.018;
Bpoints(1,1:25)=-0.0207;
axis([-1 100*1.7 0.985 1.015])
xlabel('Time(s)')
ylabel('Normalised signal');
ax = gca;
ax.FontSize = 14;
%pos2 = [0.1 0.6 0.5 0.35];
pos2 = [0.1 0.1 0.5 0.35];


text(5,1.012,'(a)','FontSize',14)

subplot('Position',pos2)
plot(points*1.7,Bpoints,'-','LineWidth',2)
axis([-1 100*1.7 -0.021 -0.0175])
xlabel('Time (s)')
ylabel('\it{I_1}(A)');
ax = gca;
ax.FontSize = 14;

pos3 = [0.7 0.1 0.2 0.85];


text(5,-0.0177,'(b)','FontSize',14)
subplot('Position',pos3)


LC=[counts(5:25) counts(55:75)];
c1=mean(LC);e1=std(LC)/sqrt(length(LC));
HC=[counts(30:50) counts(80:100)];
c2=mean(HC);e2=std(HC)/sqrt(length(HC));
%errorbar(-0.018,c1,e1,'ro--','MarkerSize',10,'MarkerFaceColor','r')
errorbar(-0.0207,c1,e1,'mo--','MarkerSize',10,'MarkerFaceColor','m')
hold on
%errorbar(-0.0207,c2,e2,'ro--','MarkerSize',10,'MarkerFaceColor','r')
errorbar(-0.018,c2,e2,'mo--','MarkerSize',10,'MarkerFaceColor','m')
axis([-0.022 -0.017 0.992 1.008])
ylabel('Normalised signal');
xlabel('\it{I_1}(A)');
ax = gca;
ax.FontSize = 14;
text(-0.0215,1.007,'(c)','FontSize',14)

% pos1 = [0.05 0.05 0.6 0.4];
% subplot('Position',pos1)
% pos2 = [0.05 0.55 0.6 0.4];
% subplot('Position',pos2)
% pos3 = [0.65 0.05 0.3 0.9];
% subplot('Position',pos3)

%exportgraphics(f,'/Users/gilalexandrowicz/Downloads/Fig4.png','Resolution',300)
exportgraphics(f,'~/Documents/NCOMMS2025_editorial_response/Fig4.pdf','Resolution',300)
%~/Documents/NCOMMS2025_editorial_response/