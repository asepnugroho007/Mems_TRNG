clear all;close all;

T = readtable("Cr_50uA.xlsx");
A= T(:,3);%read LRS
A = table2array(A);
n=length(A);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
LRS_Cr50u=timetable(A(:,1),'SampleRate',Fs);
LRS_Cr50u=normalize(LRS_Cr50u,"range");
average_R=mean(table2array(LRS_Cr50u));
plot( table2array(LRS_Cr50u));

B= T(:,2);%read HRS
B = table2array(B)
n=length(B);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
HRS_Cr50u=timetable(B(:,1),'SampleRate',Fs);


S= readtable("Cr_20uA.xlsx");
C= S(:,3);%read LRS
C = table2array(C)
n=length(C);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
LRS_Cr20u=timetable(C(:,1),'SampleRate',Fs);



D= S(:,2);%read HRS
D = table2array(D)
n=length(D);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
HRS_Cr20u=timetable(D(:,1),'SampleRate',Fs);


U= readtable("Cr_75uA.xlsx");
E= U(:,3);%read LRS
E = table2array(E)
n=length(E);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
LRS_Cr75u=timetable(E(:,1),'SampleRate',Fs);



F= U(:,2);%read HRS
F = table2array(F)
n=length(F);
time=10; %in second
ts=time/n; %time sampling
Fs=1/ts;
tick_time=0:ts:(time-ts);
HRS_Cr75u=timetable(F(:,1),'SampleRate',Fs);