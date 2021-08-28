% Desenvolvido por Rafael Pavan
% Programa de Pós Graduação em Engenharia Elétrica da UNESP
% Disciplina de Qualidade de Energia Elétrica

clc
clear all

% Caso 1 - Sistema Trifásico Equilibrado

figure

syms t

ia1 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5;
ib1 = 127*sqrt(2)*sin(2*3.1415*60*t-4*pi/6)/1.5;
ic1 = 127*sqrt(2)*sin(2*3.1415*60*t+4*pi/6)/1.5;

tev = 0:0.0001:0.14;

tclarke = (2/3) * [1 -0.5 -0.5; 0 (sqrt(3)/2) (-sqrt(3)/2)];
vetoralfabeta=[];
vetor = [ia1 ib1 ic1]
 
vetoralfabeta = tclarke*transpose(vetor);

alfa=eval(subs(vetoralfabeta(1),t,tev));
beta=eval(subs(vetoralfabeta(2),t,tev));

subplot(3,1,1)
plot(tev,eval(subs(ia1,t,tev)))
hold on
plot(tev,eval(subs(ib1,t,tev)))
hold on
plot(tev,eval(subs(ic1,t,tev)))
grid on
grid minor
title('Gráfico: Sistema Trifásico Equilibrado')
xlabel('Corrente [A]')
ylabel('Tempo [s]')
legend('Ia','Ib','Ic')
subplot(3,1,2)
plot(tev,beta);
hold on
plot(tev,alfa);
grid on
grid minor
title('Gráfico: Sistema Equilibrado Correntes Alfa e Beta')
xlabel('Tempo [s]')
ylabel('Correntes Alfa e Beta')
legend('Beta','Alfa')


subplot(3,1,3)
plot(alfa,beta);
grid on
grid minor
title('Gráfico Alfa-Beta: Sistema Equilibrado')
xlabel('Alfa')
ylabel('Beta')


% Caso 2 - Sistema Trifásico Desequilibrado


ia2 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5;
ib2 = 0.8*127*sqrt(2)*sin(2*3.1415*60*t-2*pi/6)/1.5;
ic2 = 127*sqrt(2)*sin(2*3.1415*60*t+3*pi/6)/1.5;

tclarke = (2/3) * [1 -0.5 -0.5; 0 (sqrt(3)/2) (-sqrt(3)/2)];
vetoralfabeta2=[];
vetor = [ia2 ib2 ic2]
 
vetoralfabeta2 = tclarke*transpose(vetor);

alfa2=eval(subs(vetoralfabeta2(1),t,tev));
beta2=eval(subs(vetoralfabeta2(2),t,tev));

figure
plot(alfa2,beta2);
grid on
grid minor

subplot(3,1,1)
plot(tev,eval(subs(ia2,t,tev)))
hold on
plot(tev,eval(subs(ib2,t,tev)))
hold on
plot(tev,eval(subs(ic2,t,tev)))
grid on
grid minor
title('Gráfico: Sistema Trifásico Desequilibrado')
xlabel('Corrente [A]')
ylabel('Tempo [s]')
legend('Ia','Ib','Ic')
subplot(3,1,2)
plot(tev,beta2);
hold on
plot(tev,alfa2);
grid on
grid minor
title('Gráfico: Sistema Desequilibrado Correntes Alfa e Beta')
xlabel('Tempo [s]')
ylabel('Correntes Alfa e Beta')
legend('Beta','Alfa')
subplot(3,1,3)
plot(alfa2,beta2);
grid on
grid minor
title('Gráfico Alfa-Beta: Sistema Desequilibrado')
xlabel('Alfa')
ylabel('Beta')


% Caso 3 - Sistema Trifásico Equilibrado com Harmônica impar

harmonicasi = [3 5 7]

figure

for i=1:length(harmonicasi)
    
    ia3 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5 + (0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasi(i)*t)/1.5);
    ib3 = 0.8*127*sqrt(2)*sin(2*3.1415*60*t-4*pi/6)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasi(i)*t-4*pi/6)/1.5);
    ic3 = 127*sqrt(2)*sin(2*3.1415*60*t+4*pi/6)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasi(i)*t+4*pi/6)/1.5);


    tclarke = (2/3) * [1 -0.5 -0.5; 0 (sqrt(3)/2) (-sqrt(3)/2)];
    vetoralfabeta3=[];
    vetor = [ia3 ib3 ic3]
 
    vetoralfabeta3 = tclarke*transpose(vetor);

    alfa3=eval(subs(vetoralfabeta3(1),t,tev));
    beta3=eval(subs(vetoralfabeta3(2),t,tev));
    
    plot(alfa3,beta3,'LineWidth',3);
    hold on
end
legend('3a','5a','7a')
title('Gráfico Alfa-Beta para Sistema com Harmônicas Ímpares')  
xlabel('Alfa')
ylabel('Beta')

grid on
grid minor


% Caso 3 - Sistema Trifásico Equilibrado com Harmônica impar

harmonicasp = [2 4 6]

figure
contador=1;
for i=1:length(harmonicasp)
    
    ia4 = 127*sqrt(2)*sin(2*3.1415*60*t)/1.5 + (0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasp(i)*t)/1.5);
    ib4 = 0.8*127*sqrt(2)*sin(2*3.1415*60*t-4*pi/6)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasp(i)*t-4*pi/6)/1.5);
    ic4 = 127*sqrt(2)*sin(2*3.1415*60*t+4*pi/6)/1.5+(0.15*127*sqrt(2)*sin(2*3.1415*60*harmonicasp(i)*t+4*pi/6)/1.5);


    tclarke = (2/3) * [1 -0.5 -0.5; 0 (sqrt(3)/2) (-sqrt(3)/2)];
    vetoralfabeta4=[];
    vetor = [ia4 ib4 ic4]
 
    vetoralfabeta4 = tclarke*transpose(vetor);

    alfa4=eval(subs(vetoralfabeta4(1),t,tev));
    beta4=eval(subs(vetoralfabeta4(2),t,tev));
    
    plot(alfa4,beta4,'LineWidth',3);
    hold on
    
    
end

title('Gráfico Alfa-Beta para Sistema com Harmônicas Pares')
legend('2a','4a','6a')
grid on
grid minor
xlabel('Alfa')
ylabel('Beta')