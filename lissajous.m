% Desenvolvido por Rafael Pavan
% Programa de Pós Graduação em Engenharia Elétrica da UNESP
% Disciplina de Qualidade de Energia Elétrica

t = 0:0.0001:0.14;

%caso1 - Carga Resistiva Z= 1.5|0º

v1 = 127*sqrt(2)*sin(2*3.1415*60*t);

i1 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5;


%caso2 - Carga Capacitiva Z= 1.5| -pi/2º

v2 = 127*sqrt(2)*sin(2*3.1415*60*t);

i2 = 127*sqrt(2)*sin(2*3.1415*60*t+(pi/2))/1.5;


%caso3 - Carga Indutiva Z= 1.5| pi/2º

v3 = 127*sqrt(2)*sin(2*3.1415*60*t);

i3 = 127*sqrt(2)*sin(2*3.1415*60*t-(pi/2))/1.5;

%caso4 - Carga Capacitiva-Resistiva Z= 1.5| pi/4º

v4 = 127*sqrt(2)*sin(2*3.1415*60*t);

i4 = 127*sqrt(2)*sin(2*3.1415*60*t+(pi/4))/1.5;

%caso5 - Carga Indutiva-Resistiva Z= 1.5| pi/4º

v5 = 127*sqrt(2)*sin(2*3.1415*60*t);

i5 = 127*sqrt(2)*sin(2*3.1415*60*t-(pi/4))/1.5;

%caso6 - Variando o Deslocamento de Fase

alfa = [0, pi/4, pi/2, 3*pi/4, pi];
v6 = 127*sqrt(2)*sin(2*3.1415*60*t);

for i=1:length(alfa)   
    i6=0;
    i6 = 127*sqrt(2)*sin(2*3.1415*60*t+alfa(i))/1.5;
    plot(v6,i6,'LineWidth',3);
    hold on

end

title('Trajetórias V-I Para Diferentes Deslocamentos de Fase')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('0º','45º','90º','135º','180º')


%caso7 - Carga Resistiva e Corrente com Harmônica de Ordem 3,5 e 7 15%

figure
harmonicas=[3 5 7];
v7 = 127*sqrt(2)*sin(2*3.1415*60*t);

for j=1:length(harmonicas)   
    i7=0;
    i7 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicas(j)*60*t)/1.5);
    plot(v7,i7,'LineWidth',3);
    hold on
end

title('Trajetórias V-I Para Diferentes Harmônicas (Carga Resistiva)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('3a','5a','7a')


%caso8 - Carga Reativa e Corrente com Harmônica de Ordem 3, 5 e 7 15%

figure;
v8 = 127*sqrt(2)*sin(2*3.1415*60*t);

for j=1:length(harmonicas)   
    I8=0;
    i8 = 127*sqrt(2)*sin(2*3.1415*60*t+pi/2)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicas(j)*60*t+pi/2)/1.5);
    plot(v8,i8,'LineWidth',3);
    hold on

end

title('Trajetórias V-I Para Diferentes Harmônicas (Carga Reativa)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('3a','5a','7a')

% Caso 9 - Harmônicas com Carga Mista

figure;
v9 = 127*sqrt(2)*sin(2*3.1415*60*t);

for k=1:length(harmonicas)   
    I9=0;
    i9 = 127*sqrt(2)*sin(2*3.1415*60*t+pi/4)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicas(k)*60*t+pi/4)/1.5);
    plot(v9,i9,'LineWidth',3);
    hold on

end
title('Trajetórias V-I Para Diferentes Harmônicas (Carga Resistiva-Reativa)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('3a','5a','7a')
%caso10 - Carga Resistiva e Corrente com Harmônica de Ordem 2,4 e 6 15%

figure
harmonicasp=[2 4 6];
v10 = 127*sqrt(2)*sin(2*3.1415*60*t);

for j=1:length(harmonicasp)   
    i10 = 0;
    i10 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicasp(j)*60*t)/1.5);
    plot(v10,i10,'LineWidth',3);
    hold on
end

title('Trajetórias V-I Para Diferentes Harmônicas (Carga Resistiva)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('2a','4a','6a')


%caso11 - Carga Reativa e Corrente com Harmônica de Ordem 2, 4 e 6 15%

figure;
v11 = 127*sqrt(2)*sin(2*3.1415*60*t);

for j=1:length(harmonicasp)   
    I11=0;
    i11 = 127*sqrt(2)*sin(2*3.1415*60*t+pi/2)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicasp(j)*60*t+pi/2)/1.5);
    plot(v11,i11,'LineWidth',3);
    hold on

end

title('Trajetórias V-I Para Diferentes Harmônicas (Carga Reativa)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('2a','4a','6a')

% Caso 12 - Harmônicas com Carga Mista

figure;
v12 = 127*sqrt(2)*sin(2*3.1415*60*t);

for k=1:length(harmonicasp)   
    I12=0;
    i12 = 127*sqrt(2)*sin(2*3.1415*60*t+pi/4)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*harmonicasp(k)*60*t+pi/4)/1.5);
    plot(v12,i12,'LineWidth',3);
    hold on

end

title('Trajetórias V-I Para Diferentes Harmônicas (Carga Resistiva-Reativa)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
legend('2a','4a','6a')

figure
subplot(3,1,2)
plot(v1,i1);
title('Trajetória V-I')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
subplot(3,1,1)
plot(t,v1);
hold on
grid on
grid minor
plot(t,i1);
title('Caso 1: Carga Resistiva (1.5 | 0º)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
legend('Tensão','Corrente')
subplot(3,1,3)
plot3(v1,i1,t);
grid on
grid minor
title('Trajetória V-I-T')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
zlabel('Tempo [s]')

figure
subplot(3,1,2)
plot(v2,i2);
title('Trajetória V-I')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
subplot(3,1,1)
plot(t,v2);
hold on
grid on
grid minor
plot(t,i2);
title('Caso 1: Carga Capacitiva (1.5 | -90º)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
legend('Tensão','Corrente')
subplot(3,1,3)
plot3(v2,i2,t);
grid on
grid minor
title('Trajetória V-I-T')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
zlabel('Tempo [s]')

figure
subplot(3,1,2)
plot(v3,i3);
title('Trajetória V-I')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
subplot(3,1,1)
plot(t,v3);
hold on
grid on
grid minor
plot(t,i3);
title('Caso 1: Carga Indutiva (1.5 | 90º)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
legend('Tensão','Corrente')
subplot(3,1,3)
plot3(v3,i3,t);
grid on
grid minor
title('Trajetória V-I-T')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
zlabel('Tempo [s]')

figure
subplot(3,1,2)
plot(v4,i4);
title('Trajetória V-I')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
subplot(3,1,1)
plot(t,v4);
hold on
grid on
grid minor
plot(t,i4);
title('Caso 1: Carga Capacitiva-Resistiva (1.5 | -45º)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
legend('Tensão','Corrente')
subplot(3,1,3)
plot3(v4,i4,t);
grid on
grid minor
title('Trajetória V-I-T')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
zlabel('Tempo [s]')

figure
subplot(3,1,2)
plot(v5,i5);
title('Trajetória V-I')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
grid on
grid minor
subplot(3,1,1)
plot(t,v5);
hold on
grid on
grid minor
plot(t,i5);
title('Caso 1: Carga Indutiva-Resistiva (1.5 | 45º)')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
legend('Tensão','Corrente')
subplot(3,1,3)
plot3(v5,i5,t);
grid on
grid minor
title('Trajetória V-I-T')
xlabel('Tensão [V]')
ylabel('Corrente [A]')
zlabel('Tempo [s]')