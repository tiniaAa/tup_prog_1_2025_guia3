Proceso ejercicio6
	Definir nota, muy_bueno, bueno, regular, insuficiente, tot_notas, cant_notas, aprobado, no_aprobado  Como Entero;
	Definir porc1, porc2, porc3, porc4,promedio Como Real;
	// contadores para porcentajes 
	muy_bueno <- 0;
	bueno <- 0;
	regular <- 0;
	insuficiente <- 0;
	// contador de notas y acumulador de notas 
	cant_notas <- 0;
	tot_notas <- 0;
	// contadores de aprobado y no aprobados 
	aprobado <- 0;
	no_aprobado <- 0;
	Escribir 'ingrese la nota (-1 corta )';
	Leer nota;
	Mientras nota<>-1 Hacer
		
		cant_notas <- cant_notas+1;
		tot_notas <- tot_notas+nota;
		Si nota>=6 Entonces
			aprobado <- aprobado+1;
		SiNo
			no_aprobado <- no_aprobado+1;
		FinSi
		
		Segun nota Hacer
			8,9,10:
				muy_bueno <- muy_bueno+1;
			6, 7:
				bueno <- bueno+1;
			4, 5:
				regular <- regular+1;
			3,2,1,0:
				insuficiente <- insuficiente+1;
			De Otro Modo:
				
		FinSegun
		Escribir "ingrese siguiente nota(-1 corta)";
		leer nota;
	FinMientras
	
	porc1=(muy_bueno/cant_notas)*100;
	porc2=(bueno/cant_notas)*100;
	porc3=(regular/cant_notas)*100;
	porc4=(insuficiente/cant_notas)*100;
	
	
	promedio=tot_notas/cant_notas;
	
	
	Escribir "aprobados: ",aprobado;
	Escribir "no aprobados: ",no_aprobado;
	Escribir "cantidad de notas ingresadas: ",cant_notas;
	Escribir "promedio de las notas: ", promedio;
	Escribir "hay ",porc1,"% de muy bueno ";
	Escribir "hay ",porc2,"% de bueno";
	Escribir "hay ",porc3,"% de regular";
	Escribir "hay ",porc4,"% de insuficiente";
	
	
	
	
	
	
	
	
	
	
FinProceso
