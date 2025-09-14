Funcion modificar_datos(grados Por Referencia)
	Definir numeroo como Real;
	
	numeroo <- 1
	
	Escribir "ingrese el nuevo dato de grados celsius";
	Leer nuevos_celcius;
	
	grados[numeroo] <- nuevos_celcius
Fin Funcion

Funcion imprimir_grados_fahrenheit(grados Por Referencia,celsius_a_fahrenheit)
	
	Escribir " grados celsius: " " " grados[1] " " "a fahrenheit es: ", celsius_a_fahrenheit ;
Fin Funcion

Funcion celsius_a_fahrenheit <- tomar_grados_fahrenheit(grados Por Referencia)
	Definir celsius_a_fahrenheit Como Real;
	
	celsius_a_fahrenheit <- (grados[1] * 9/5) + 32
	
Fin Funcion

Funcion grados_celsius<- tomar_grados(grados Por Referencia)
	Definir grados_celsius Como Real;
	
	Escribir "ingrese los grados celsius";
	Leer grados_celsius;
	
	grados[1] <- grados_celsius;
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
	
	Algoritmo celsiusafahrenheit
		
		
		Definir segun_menu Como Real;
		
		Dimension grados[1];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				caso 1:
					Escribir "guardar datos";
					datos_grados <- tomar_grados(grados)
				Caso 2:				
					Escribir "modificar datos";
					modificar_datos(grados)
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "DE CELSIUS A FAHRENHEIT";
					grados_fahrenheit <- tomar_grados_fahrenheit(grados)
					imprimir_grados_fahrenheit(grados,grados_fahrenheit)
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
