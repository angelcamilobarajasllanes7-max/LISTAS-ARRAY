Funcion modificar_datos(tiempo_parcial Por Referencia)
	Escribir "ingresesa el numero donde quieres cambiar la hora del pare";
	Leer numeroo;
	
	Escribir "ingrese el nuevo tiempo a cambiar";
	Leer nuevo_tiempo;
	tiempo_parcial[numeroo] <- nuevo_tiempo;
Fin Funcion

Funcion mostrar_tiempos(numero_pares,tiempo_parcial Por Referencia,tiempo_total)
	Para i <- 1 Hasta numero_pares Con Paso 1 Hacer
     Escribir "tiempo tardado en tramo: " , " " i, " " "=" " " tiempo_parcial[i] , " " "horas";
 Fin Para
 Escribir "el total de tiempo que demoro en llegar es de: ", " " "=" " " tiempo_total  " " "horas";
 
Fin Funcion

Funcion tiempo_total <- tomar_tiempo(numero_pares,tiempo_parcial Por Referencia)
	Definir tiempo, tiempo_total Como Real;
	
	Para i <- 1 Hasta numero_pares Con Paso 1 Hacer
		Escribir "ingrese el tiempo demorado en el pare: ", " " i;
		Leer tiempo;
		tiempo_parcial[i] <- tiempo;
		
		
		tiempo_total <- tiempo_total + tiempo
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
	
	Algoritmo tiempototaldelviaje
	
		
		Definir segun_menu Como Real;
		
		Escribir "ingrese cuantas veces paro el bus";
		Leer numero_pares;
		
		Dimension tiempo_parcial[numero_pares]
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				caso 1:
					Escribir "guardar datos";
					tiempo <- tomar_tiempo(numero_pares,tiempo_parcial)
					
				Caso 2:				
					Escribir "modificar datos";
				
					modificar_datos(tiempo_parcial)
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "LOS PARES EN EL VIAJE";
					
					mostrar_tiempos(numero_pares,tiempo_parcial,tiempo)
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
