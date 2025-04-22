Proceso ejercicio3
	Definir lote,cant_lote,fallas_lote,falla_total,error_absoluto,lot_menor,lot_mayor,lot_m_fallas,lot_mas_fallas,medida_falla,i Como Entero;
	definir medida, medida_torn, porc_falla,porc_falla_total Como Real;
	
	
	//pedir primer codigo
	
	Escribir "Codigo de lote (con 0 termina )";
	leer lote;
	
	
	//iniciar contadores y acumuladores 
	lot_menor=lote;
	lot_mayor=lote;
	lot_m_fallas=11;
	lot_mas_fallas=-1;
	falla_total=0;
	cant_lote=0;
	
	
	
	Mientras lote<>0 Hacer//primer iterar y
		//verificar si sigue 
		
		
		
		
		
		//iniciar contador fallas lote y error absoluto
		fallas_lote=0;
		Escribir "ingrese medida esperada ";//ingresar fallas
		leer medida;
		error_absoluto=0;

		para i=1 Hasta 5 Con Paso 1 Hacer// segundo iterar 
			
			Escribir "ingrese la medida del tornillo ",i;//ingresar medida tornillo
			leer medida_torn;
			
			si medida_torn<medida Entonces//verificar medida
				medida_falla=abs(medida_torn-medida);
				fallas_lote=fallas_lote+1;//aumentar falla y reemplazar en error absoluto 
				si medida_falla>error_absoluto Entonces
					error_absoluto=medida_falla;
				FinSi
			sino 
				si medida_torn>medida Entonces
					medida_falla=abs(medida_torn-medida);
					fallas_lote=fallas_lote+1;

					si medida_falla>error_absoluto Entonces
						error_absoluto=medida_falla;
					FinSi
				FinSi
			FinSi
			
			
			
		FinPara// termina segundo iterar 
		porc_falla=(fallas_lote/10)*100;// calcular porcentaje de lote 
		Escribir "hubo un %",porc_falla,"de fallas en el lote ", lote ;//mostrar % de falla de lote
		Escribir "la medida del error absoluto fue de  ", error_absoluto;//mostrar error absoluto 
		
		falla_total=falla_total+fallas_lote;//sumar fallas totales
		
		
		si fallas_lote<lot_m_fallas Entonces// verificar menor y mayor en fallas 
			lot_m_fallas=fallas_lote;
			lot_menor=lote;
		
		FinSi
		si fallas_lote>lot_mas_fallas Entonces
			lot_mas_fallas=fallas_lote;
			lot_mayor=lote;
		FinSi
		
		//Escribir "menos", lot_m_fallas,"....",lot_menor;
		//Escribir "mas",lot_mas_fallas,".....",lot_mayor;
		
		
		cant_lote=cant_lote+1;//sumar lote 
		Escribir "ingrese codigo de siguiente lote (finaliza con 0 ) ";//pedir siguiente codigo 
		leer lote;
		
	FinMientras// termina primer iterar
	porc_falla_total = (falla_total / (cant_lote * 10)) * 100;//calcular % de fallas totales
	Escribir "se proceso ",cant_lote," lotes "; //mostrar cantidad de lotes procesados 
	Escribir "el % de fallas totales fue de ",porc_falla_total,"%"; // mostrar el % de fallas totales
	Escribir "El lote con menores fallas fue ", lot_menor, " con ",lot_m_fallas," fallas";//mostrar lote con menos fallas
	Escribir "El lote con mayor fallas fue ", lot_mayor, " con ",lot_mas_fallas," fallas";//mostrar lote con mas fallas 
	
	
FinProceso
