clear all;
tim=[];
can=0;
disp('///////////////////////////////////////////////////////////');
disp(' Simulación de la ruina del jugador ');
disp('///////////////////////////////////////////////////////////');
disp(' Personalización del Juego ');
disp('///////////////////////////////////////////////////////////');
capitalj=input('\nIntroduce el capital inicial del Jugador: ');
capitalb=input('\nIntroduce el capital inicial de la Banca: ');
probabilidad=input('\nIntroduce la probabilidad de que el jugador gane: ');
cantidad=input('\nIntroduce la cantidad de iteraciones: ');
disp('///////////////////////////////////////////////////////////');
disp(' Simulación de la ruina del jugador ');
disp('///////////////////////////////////////////////////////////');
disp('///////////////////////////////////////////////////////////');
disp(' Resultados del Juego ');
disp('///////////////////////////////////////////////////////////');
if cantidad==1
    [R,t]=Ruina(capitalj,capitalb,probabilidad,1);
    if R==1
        disp('///////////////////////////////////////////////////////////');
        disp(' La mesa gano ');
        disp('///////////////////////////////////////////////////////////');
    else
        disp('///////////////////////////////////////////////////////////');
        disp(' El jugador gano ');
        disp('///////////////////////////////////////////////////////////');
    end
else
    for i=1:cantidad
        [R,t]=Ruina(capitalj,capitalb,probabilidad,0);
        tim=[tim;t];
        can=can+R;
      
    end
    disp('Capital Inicial del Jugador:');
    disp(capitalj);
    disp('Capital Inicial de la Banca:');
    disp(capitalb);
    disp('Valor de la apuesta:');
    disp(1);
    disp('___________________________________________________________');
    disp('Cantidad de Partidas:');
    disp(cantidad);
    disp('Duración Maxima (Máximo de tiros para terminar la partida):');
    disp(max(tim));
    disp('Duración Minima (Mínimo de tiros para terminar la partida):');
    disp(min(tim));
    disp('Duración Media:');
    disp(mean(tim));
    disp('Juegos Ganados por el Jugador:');
    disp(cantidad-can);
    disp('Juegos Ganados por la mesa:');
    disp(can);
    disp('===========================================================');

end



%[R,t]=Ruina(capitalj,capitalb,probabilidad);
