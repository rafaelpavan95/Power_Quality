% Variáveis de Entrada

magnitudes = [10,9,8]; % <- Inserir os Valores das Magnitudes da Grandeza a Ser Analisada

angles = degtorad([10,-140,-20]); % <- Inserir os Valores dos ângulos em Graus da Grandeza a Ser Analisada, Referentes às Magnitudes Anteriores

% Implementando Teorema de Fortscue

matriz_A_inv = [1, 1, 1;1,(exp(i*2*3.1415/3)), (exp(i*2*3.1415/3))^2; 1, (exp(i*2*3.1415/3))^2, (exp(i*2*3.1415/3))];

vetor = [magnitudes(1).*exp(i*angles(1)),magnitudes(2).*exp(i*angles(2)),magnitudes(3).*exp(i*angles(3))];

simetricas = vetor*(1/3)*matriz_A_inv;

modulos_sim=abs(simetricas)
angulos_sim=radtodeg(angle(simetricas))

% Encontrando Componentes de Sequência 1, 2 e 0

positiva = [simetricas(2), simetricas(2)*exp(i*2*3.1415/3)^2,simetricas(2)*exp(i*2*3.1415/3)];
negativa = [simetricas(3), simetricas(3)*exp(i*2*3.1415/3),simetricas(3)*exp(i*2*3.1415/3)^2];
zero = [simetricas(1), simetricas(1),simetricas(1)];

v = [real(simetricas);imag(simetricas)];

v1 = [real(positiva);imag(positiva)];

v2 = [real(negativa);imag(negativa)];

v0 = [real(zero);imag(zero)];


% Criando Gráficos

subplot(2,2,1)

plotv(v,'-')
grid on
grid minor
title('Componentes Simétricas')
ylabel('Eixo Imaginário')
xlabel('Eixo Real')
legend('Seq 0', 'Seq 1', 'Seq 2')

subplot(2,2,2)

plotv(v1,'-')
grid on
grid minor
title('Componentes Simétricas Sequência 1')
ylabel('Eixo Imaginário')
xlabel('Eixo Real')
legend('Ia', 'Ib', 'Ic')

subplot(2,2,3)

plotv(v2,'-')
grid on
grid minor
title('Componentes Simétricas Sequência 2')
ylabel('Eixo Imaginário')
xlabel('Eixo Real')
legend('Ia', 'Ib', 'Ic')

subplot(2,2,4)

plotv(v0,'-')
grid on
grid minor
title('Componentes Simétricas Sequência 0')
ylabel('Eixo Imaginário')
xlabel('Eixo Real')
legend('Ia', 'Ib', 'Ic')