Proceso ejercicio3
	Definir lote,cant_lote,fallas_lote,falla_total,error_absoluto,lot_menor,lot_mayor,lot_m_fallas,lot_mas_fallas,medida_falla,i Como Entero;
	definir medida, medida_torn, porc_falla,porc_falla_total Como Real;
	
	Escribir "Codigo de lote (con 0 termina )";
	leer lote;
	
	lot_menor=lote;
	lot_mayor=lote;
	lot_m_fallas=11;
	lot_mas_fallas=-1;
	falla_total=0;
	cant_lote=0;
	Mientras lote<>0 Hacer
		
		
		
		
		
		fallas_lote=0;
		Escribir "ingrese medida esperada ";
		leer medida;
		error_absoluto=0;

		para i=1 Hasta 5 Con Paso 1 Hacer
			
			Escribir "ingrese la medida del tornillo ",i;
			leer medida_torn;
			
			si medida_torn<medida Entonces
				medida_falla=abs(medida_torn-medida);
				fallas_lote=fallas_lote+1;
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
			
			
			
		FinPara
		porc_falla=(fallas_lote/10)*100;
		Escribir "hubo un %",porc_falla,"de fallas en el lote ", lote ;
		Escribir "la medida del error absoluto fue de  ", error_absoluto;
		
		falla_total=falla_total+fallas_lote;
		
		
		si fallas_lote<lot_m_fallas Entonces
			lot_m_fallas=fallas_lote;
			lot_menor=lote;
		
		FinSi
		si fallas_lote>lot_mas_fallas Entonces
			lot_mas_fallas=fallas_lote;
			lot_mayor=lote;
		FinSi
		
		//Escribir "menos", lot_m_fallas,"....",lot_menor;
		//Escribir "mas",lot_mas_fallas,".....",lot_mayor;
		
		
		cant_lote=cant_lote+1;
		Escribir "ingrese codigo de siguiente lote (finaliza con 0 ) ";
		leer lote;
		
	FinMientras
	porc_falla_total = (falla_total / (cant_lote * 10)) * 100;
	Escribir "se proceso ",cant_lote," lotes ";
	Escribir "el % de fallas totales fue de ",porc_falla_total,"%";
	Escribir "El lote con menores fallas fue ", lot_menor, " con ",lot_m_fallas," fallas";
	Escribir "El lote con mayor fallas fue ", lot_mayor, " con ",lot_mas_fallas," fallas";
	
	
FinProceso
