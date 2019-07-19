%书上例题5.24
%设计切比雪夫模拟低通滤波器的程序
clc;clear;
n=0:0.01:2;
WP=200*pi;
 WS=300*pi;
 RP=1;
 RS=30;
 EBS=sqrt(10^(RP/10)-1);
 A=10^(RS/20);
 WC=WP;
 WR=WS/WP;
 g=sqrt(A*A-1)/EBS;
 N1=log10(g+sqrt(g*g-1))/log10(WR+sqrt(WR*WR-1));
 N=ceil(N1);
 [z,p,k]=cheb1ap(N,RP);
 [b,a]=zp2tf(z,p,k);
 [H,w]=freqs(b,a,n);
 magH2=(abs(H)).^2;
 posplot=['22',N];
% subplot(posplot)
 plot(w,magH2,'k');
 title(['N=',num2str(N)]);
 grid
 
