Proceso ej1
	definir par,impar,impar_tot,mayor,menor,n_loteria,res, i Como Entero;
	Definir prom_impar Como Real;
	
	Escribir "ingrese numero";
	leer n_loteria;
	
	mayor=n_loteria;
	menor=n_loteria;
	

	par=0;
	impar=0;
	impar_tot=0;
	
	
	
	para i=1 Hasta 5 Con paso 1 Hacer
		Escribir n_loteria;
		si n_loteria<menor Entonces
			menor=n_loteria;
			
		FinSi
		si n_loteria>mayor Entonces
			mayor=n_loteria;
		FinSi
		
		res=n_loteria%2;
		
		si res == 0 Entonces
			par=par+1;
		sino
			impar=impar+1;
			impar_tot=impar_tot+n_loteria;
		FinSi
		
		Escribir "ingrese siguiente numero de la loteria ";
		leer n_loteria;
	FinPara
	Escribir impar_tot;
	Escribir impar;
	prom_impar=(impar_tot/impar);
	
	Escribir "el promedio de numeros impares es de ",prom_impar;
	Escribir "hay ",par," numeros pares ";
	Escribir "el numero menor es ",menor;
	Escribir "el numero mayor es ",mayor;

FinProceso
