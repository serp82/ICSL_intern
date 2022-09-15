clear
fileID = fopen('Costas binary')
y = fread(fileID,'float');
t = (1:1024);
odd = (1:2:2048);
even = (2:2:2048);
y1 = y(odd,:);
y2 = y(even,:);
y3=complex(y1,y2);

figure(1)
subplot(4,1,1)
plot(t, y3)
title('Costas')

subplot(4,1,2)
IM=tfrcw(y3,t,2048);
imagesc(IM);
pause(1);
axis off
title('Costas CWD')

subplot(4,1,3)
IM2=tfrwv(y3,t,2048); 
imagesc(IM2); 
pause(1);
axis off
title('Costas WVD')


subplot(4,1,4)
IM3=tfrspwv(y3,t,2048);
imagesc(IM3);
pause(1);
axis off
title('Costas SWVD')
exportgraphics(gcf,'/media/yllausac/9C33-6BBD/namlab/week9/Costas.png','Resolution',300)

y4 = abs(y3);
y5 = fft(y3)


cerecurr_y(y3)
title('Complex')
exportgraphics(gcf,'/media/yllausac/9C33-6BBD/namlab/week9/Costas_RP(complex).png','Resolution',300)
cerecurr_y(y4)
title('Absolute Value')
exportgraphics(gcf,'/media/yllausac/9C33-6BBD/namlab/week9/Costas_RP(abs).png','Resolution',300)
cerecurr_y(y1)
title('Real Part')
exportgraphics(gcf,'/media/yllausac/9C33-6BBD/namlab/week9/Costas_RP(realpart).png','Resolution',300)
cerecurr_y(y5)
title('FFT')
exportgraphics(gcf,'/media/yllausac/9C33-6BBD/namlab/week9/Costas_RP(fft).png','Resolution',300)