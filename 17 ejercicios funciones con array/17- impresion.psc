Funcion modificar_datos(impresion_paginas Por Referencia)
	Escribir "ingrese un numero entre 1 y 2, 1 = precio, 2 = cantidad";
	Leer numeroo;
	
	Escribir "ingrese el nuevo dato";
	Leer nuevo_dato;
	impresion_paginas[numeroo] <-  nuevo_dato;
Fin Funcion

Funcion mostrar_datos(impresion_paginas Por Referencia, total_pagar)
	Escribir "el precio de casa de pagina tiene un costo de: ", " " impresion_paginas[1];
	Escribir "la cantidad a imprimie es: ", " " impresion_paginas[2];
	
	Escribir "el total a pagra por la impresion es de: " , " " total_pagar;
Fin Funcion

Funcion total_pagar <- tomar_total(impresion_paginas Por Referencia)
	Definir total_pagar Como Real;
	
	total_pagar <- impresion_paginas[1] * impresion_paginas[2];
Fin Funcion

Funcion datos_impresion(impresion_paginas Por Referencia)
	Definir precio, cant Como Real;
	
	Escribir "ingrese el precio de cada pagina";
	Leer precio;
	impresion_paginas[1] <- precio;
	
	Escribir "ingrese la cantidad de paginas a imprimir";
	Leer cant;
	impresion_paginas[2] <- cant;
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
	
	Algoritmo impresion
	
		
		Definir segun_menu Como Real;
		
		
		Dimension impresion_paginas[2]
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				caso 1:
					Escribir "guardar datos";
					
					datos_impresion(impresion_paginas)
				Caso 2:				
					Escribir "modificar datos";
					modificar_datos(impresion_paginas)
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "TOTAL A PAGAR IMPRESION";
					
					total_impresion <- tomar_total(impresion_paginas)
					mostrar_datos(impresion_paginas, total_impresion)
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
