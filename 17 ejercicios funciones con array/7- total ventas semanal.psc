Funcion modificar_datos(dia Por Referencia)
	Escribir "ingrese el numero del dia que deseas cambiar el total";
	Leer numeroo;
	
	Escribir "ingrese el nuevo total del dia";
	Leer nuevo_total;
	
	dia[numeroo] <- nuevo_total;
Fin Funcion

Funcion imprimir_total_venta(total_venta_semana, dia Por Referencia)
	Escribir "ventas durante la semana";
	
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "dia: ", i " " "total: ", " " dia[i];
	Fin Para
	Escribir "el total de la veta semanal es: ", " " total_venta_semana
Fin Funcion

Funcion total_venta_semana <- tomar_total(dia Por Referencia)
	Definir total_venta_semana Como Real;
	
	total_venta_semana <-  0
	
	Para i<- 1 Hasta 7 Con Paso 1 Hacer
		
		total_venta_semana <- total_venta_semana + dia[i]
		
		
	Fin Para
	Escribir "ttt",total_venta_semana
Fin Funcion

Funcion dato_venta_semana(dia Por Referencia)
	Definir dias Como Real;
	
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "ingrese la venta del dia: ", i;
		Leer dias;
		
		dia[i] <- dias
	Fin Para
Fin Funcion

	
	Funcion imprimir_fin_programa(salir_programa)
		Escribir "FIN DEL PROGRAMA";
	Fin Funcion
	
	
	funcion menu <- tomar_menu 
		Definir menu Como Entero;
		
		Escribir "-------MENU-------";
		Escribir "1- guardar datos";
		Escribir "2- modificar datos";
		Escribir "3- mostrar los datos ";
		Escribir "4- salir del programa";
		
		Escribir "ingrese un numero del menu dependiendo de lo quieras hacer";
		leer menu;
	Fin Funcion
	
	Algoritmo totalventassemanal
	
		
		Definir segun_menu, total_semana Como Real;
		
		Dimension dia[7];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				caso 1:
					Escribir "guardar datos";
					dato_venta_semana(dia)
				Caso 2:				
					Escribir "modificar datos";
					modificar_datos(dia)
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "VENTAS DURANTE LA SEMANA FUE:";
					total_semana <- tomar_total(dia)
					
					imprimir_total_venta(total_semana, dia)
				Caso 4: 
					Escribir "salir del programa";
					imprimir_fin_programa(salir_programa)
				De Otro Modo:
					Escribir " NO ESTA DENTRO DE NUESTRAS OPCIONES";
			FinSegun
			
			Escribir "¿quieres continuar con tu proceso?";
			Leer respuesta;
		Hasta Que respuesta="no" o respuesta="No"
		
FinAlgoritmo
