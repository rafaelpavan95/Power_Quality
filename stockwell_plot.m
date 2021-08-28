% Primeiro Rodar o Arquivo PQ_GRUPOB_disturbios.m
% Depois rodar o Arquivo PQ_GRUPOB_st.m

% variar o y para cada disturbio a ser estudado, com base nos y
% desenvolvidos no arquivo disturbios.m

clear z f t st
[st,t,f] = PQ_GRUPOB_st(y6,0,200,fsample); % <- teste outrs y aqui 
z = abs(st);
surf(t,f,2.03*z,'edgecolor', 'none')
xlabel('Tempo [s]')
ylabel('Frequência [Hz]')
zlabel('Amplitude [PU]')
colormap(jet)
view(137,27)
grid on
grid minor