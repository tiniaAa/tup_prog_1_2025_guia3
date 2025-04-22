Proceso disc_jokey
	Definir seg,min,cancion_dur,H,M,S,dur_menor,dur_mayor,i,tot_S Como Entero;
	Definir nombre_can,nombre_men,nombre_mayor Como Caracter;
	definir continua Como Logico;
	tot_S=0;
	
	
	continua=Verdadero;
	
	
	
	
	Escribir "Ingrese nombre de la cancon ";
	leer nombre_can;
	Escribir "ingrese los minutos: ";
	leer min;
	Escribir"ingrese los segundos: ";
	leer seg;
	
	cancion_dur=(min*60)+seg;
	dur_mayor=cancion_dur;
	dur_menor=cancion_dur;
	nombre_mayor=nombre_can;
	nombre_men=nombre_can;
	Repetir//PEDIR CANCIONES Y REEMPLAZAR EN CADA CASO 
	
		Escribir "Ingrese nombre de la siguiente cancion: ";
		leer nombre_can;
		Escribir "ingrese los minutos: ";
		leer min;
		Escribir"ingrese los segundos: ";
		leer seg;
	
	
		cancion_dur=(min*60)+seg;
		
		tot_S=tot_S+cancion_dur;
		
		si cancion_dur>dur_mayor Entonces
			dur_mayor=cancion_dur;
			nombre_mayor=nombre_can;
		FinSi
		si cancion_dur<dur_menor Entonces
			dur_menor=cancion_dur;
			nombre_men=nombre_can;
		FinSi
		
		
		
		si tot_S>=4440 Entonces
			continua=falso; 
		FinSi
		
		
	Mientras Que continua 
	
	
	Escribir tot_S;
	//convertir a HH.MM.SS
	H=trunc(tot_S/3600);
	M=trunc((tot_S%3600)/60);
	S=tot_S%60;
	
	
	
	Escribir "cancion menor duracion ",nombre_men;
	Escribir "cancion mayor duracion ",nombre_mayor;
	Escribir "tiempo total ", H,":",M,":",S;
	
	
	
	
FinProceso
