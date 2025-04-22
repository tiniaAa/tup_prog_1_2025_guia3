Proceso ej4
	Definir num,num_abs,contador Como Entero;
	Definir continua Como Logico;
	
	contador=2;
	continua=Verdadero;
	
	Escribir "Ingrese numero a averiguar si es primo ";
	leer num;
	
	num_abs=ABS(num);
	
	si num_abs<4 Entonces
		Escribir "es primo";
	SiNo
		Repetir 
			si num_abs%contador==0 Entonces
				continua=Falso;
			SiNo
				contador=contador+1;
			FinSi
		Mientras Que continua 
		si contador == num_abs Entonces
			Escribir "el numero ",num," es primo";
			
		sino 
			Escribir num, " no es primo";
		FinSi
	FinSi
	
	
	
FinProceso
