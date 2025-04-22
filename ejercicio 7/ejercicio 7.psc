Proceso ej7
	definir nombre Como Caracter;
	definir cantidad,precio,cantidad_total,precio_total,cont Como entero;
	definir continuar Como Logico;
	
	continuar=Verdadero;
	cantidad_total=0;
	precio_total=0;
	
	
	
	Repetir
		Escribir "Ingrese nombre del producto a ingresar";
		leer nombre ;
		Escribir "Ingrese la cantidad de ",nombre;
		leer cantidad ;
		Escribir "ingrese el precio unitario ";
		leer precio;
		
		precio_total=precio_total+(precio*cantidad);
		cantidad_total=cantidad_total+cantidad;
		
		
		
		
		Escribir "desea ingresar otros productos ?";
		Escribir "1=si ";
		Escribir "2=no";
		leer cont;
		si cont == 2 Entonces
			continuar=falso;
		FinSi
		
	Mientras Que continuar  
	
	Escribir "cantidad total de productos ",cantidad_total;
	Escribir "El total a pagar es de $",precio_total;

	
FinProceso
