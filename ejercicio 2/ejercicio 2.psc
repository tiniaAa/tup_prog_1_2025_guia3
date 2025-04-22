Proceso disc_jokey
	Definir seg,min,cancion_dur,H,M,S,dur_menor,dur_mayor,i,tot_S,contador Como Entero;
	Definir nombre_can,nombre_men,nombre_mayor Como Caracter;
	
	tot_S=0;
	contador=0;
	
	
	
	Escribir "Cuantas canciones quiere ingresar ?";
	leer i;
	
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
		Escribir dur_mayor,"menor,mayor",dur_menor,"duracion";//para ver si cambia el mayor y el menor 
		
		Escribir "Ingrese nombre de la siguiente cancion: ";
		leer nombre_can;
		Escribir "ingrese los minutos: ";
		leer min;
		Escribir"ingrese los segundos: ";
		leer seg;
		
		contador=contador+1;
	Mientras Que contador<>i
	
	
	Escribir tot_S;
	//convertir a HH.MM.SS
	H=trunc(tot_S/3600);
	M=trunc((tot_S%3600)/60);
	S=tot_S%60;
	
	Escribir"duracion total de las canciones ", H,":",M,":",S;
	Escribir "la menor cancion es ",nombre_men;
	Escribir "la mayor cancion es ",nombre_mayor;
	
	
	
FinProceso
