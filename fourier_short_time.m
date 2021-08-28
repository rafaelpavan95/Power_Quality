% Desenvolvido por Rafael Pavan
% Programa de Pós Graduação em Engenharia Elétrica - UNESP
% Disciplina de Qualidade de Energia Elétrica

windowsize = 2000; 
window = hanning(windowsize); 
nfft = windowsize; 
noverlap = windowsize-1; 
windowsize2 = 16; 
window2 = hanning(windowsize2); 
nfft2 = windowsize2; 
noverlap2 = windowsize2-1; 

figure; 
[S,F,T] = spectrogram(y,window,noverlap,nfft,48000); 
subplot(2,1,1)
plot(t,y)
grid minor
grid on
title('Tensão Puramente Senoidal')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/max(abs(S)))
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure;
subplot(2,1,1)
plot(t,y)
grid minor
grid on
title('Tensão Puramente Senoidal')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/8)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 300])
colorbar('southoutside')
colormap(jet)


figure; 

[S,F,T] = spectrogram(y2,window,noverlap,nfft,48000); 
subplot(2,1,1)
plot(t,y2)
grid minor
grid on
title('Afundamento de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/max(abs(S)))
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 
subplot(2,1,1)
plot(t,y2)
grid minor
grid on
title('Afundamento de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y2,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/8)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)


figure; 

[S,F,T] = spectrogram(y3,window,noverlap,nfft,48000); 
subplot(2,1,1)
plot(t,y3)
grid minor
grid on
title('Elevação de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/max(abs(S)))
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 
subplot(2,1,1)
plot(t,y3)
grid minor
grid on
title('Elevação de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y3,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/12.5)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)


figure; 

[S,F,T] = spectrogram(y4,window,noverlap,nfft,48000); 
subplot(2,1,1)
plot(t,y4)
grid minor
grid on
title('Interrupção de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/250)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 
subplot(2,1,1)
plot(t,y4)
grid minor
grid on
title('Interrupção de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y4,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/12.5)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)


figure; 

[S,F,T] = spectrogram(y5,hanning(800),800-1,800,48000); 
subplot(2,1,1)
plot(t,y5)
grid minor
grid on
title('Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/200)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 
subplot(2,1,1)
plot(t,y5)
grid minor
grid on
title('Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y5,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/8.5)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)

figure; 

[S,F,T] = spectrogram(y6,hanning(800),800-1,800,48000); 
subplot(2,1,1)
plot(t,y6)
grid minor
grid on
title('Transitório de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/200)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 2000])
colorbar('southoutside')
title('STFT: Janela Longa')


figure; 

subplot(2,1,1)
plot(t,y6)
grid minor
grid on
title('Afundamento de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y6,hanning(16),16-1,16,48000); 
imagesc(T,F,abs(S)/9.2)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 2000])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)

figure; 

[S,F,T] = spectrogram(y7,window,noverlap,nfft,48000); 
subplot(2,1,1)
plot(t,y7)
grid minor
grid on
title('Afundamento de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/420)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 

subplot(2,1,1)
plot(t,y7)
grid minor
grid on
title('Afundamento de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y7,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/8)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)






figure; 

[S,F,T] = spectrogram(y8,hanning(1024),1024-1,1024,48000);  
subplot(2,1,1)
plot(t,y8)
grid minor
grid on
title('Elevação de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/235)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Longa')
colormap(jet)

figure; 

subplot(2,1,1)
plot(t,y8)
grid minor
grid on
title('Elevação de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y8,window2,noverlap2,nfft2,48000); 
imagesc(T,F,abs(S)/10.5)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 600])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)

figure; 

[S,F,T] = spectrogram(y6,hanning(1024),1024-1,1024,48000); 
subplot(2,1,1)
plot(t,y6)
grid minor
grid on
title('Transitório de Tensão')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
imagesc(T,F,abs(S)/250)
set(gca,'YDir','Normal') 
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 2000])
colorbar('southoutside')
title('STFT: Janela Longa')


figure; 

subplot(2,1,1)
plot(t,y6)
grid minor
grid on
title('Afundamento de Tensão com Harmônicas')
xlabel('Tempo [s]') 
ylabel('Tensão [pu]') 
xlim([0.02 0.12])
subplot(2,1,2)
[S,F,T] = spectrogram(y6,hanning(16),16-1,16,48000); 
imagesc(T,F,abs(S)/9.2)
set(gca,'YDir','Normal') 
title('STFT: Janela Curta')
xlabel('Tempo [s]') 
ylabel('Frequência [Hz]') 
xlim([0.02 0.12])
ylim([0 2000])
colorbar('southoutside')
title('STFT: Janela Curta')
colormap(jet)