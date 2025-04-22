Proceso ej5
	Definir  num_inicio,num_fin,i,contador_num Como Entero;
	Definir continua Como Logico;
	
	continua=Verdadero;
	
	Escribir "ingrese el rango de numeros ";
	Escribir "desde "; 
	leer num_inicio;
	Escribir "hasta ";
	leer num_fin;
	
	
	
	
	
	
	si num_inicio<num_fin	Entonces
		Para contador_num=num_inicio Hasta num_fin Con Paso 1 Hacer
			continua=Verdadero;
			i=2;
			si contador_num<4 y contador_num>0 o contador_num>-4 y contador_num<0 Entonces
				Escribir contador_num," es primo ";
			SiNo
				Repetir
					si contador_num%i==0 Entonces
						continua=falso;
					SiNo
						i=i+1;
					FinSi
				Mientras Que continua
				si contador_num==i o contador_num==-i Entonces
					Escribir contador_num," es primo";
				FinSi
			FinSi
		FinPara
	FinSi
	
	
	
	si num_inicio>num_fin Entonces
		Para contador_num=num_inicio Hasta num_fin Con Paso -1 hacer 
			continua=Verdadero;
			i=2;
			
			si contador_num<4 y contador_num>0 o contador_num>-4 o contador_num<0 Entonces
				Escribir contador_num," es primo";
				
			SiNo
				Repetir
					si contador_num%i== 0 Entonces
						continua=Falso;
					SiNo
						i=i+1;
					FinSi
					
				Mientras Que continua
				si contador_num==i Entonces
					Escribir contador_num," es primo";
				FinSi
			FinSi
			
			
		FinPara
	FinSi
	
	
FinProceso
