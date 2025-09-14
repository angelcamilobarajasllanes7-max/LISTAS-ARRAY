Funcion modificar_datos(edad Por Referencia)
	Escribir "ingrese un numero de la edad de la persona del dato que quieres cambiar de 1 a 3";
	Leer numeroo;
	
	Escribir "ingrese el nuevo año de nacimiento";
	Leer nuevo_dato;
	
	edad[numeroo] <- nuevo_dato;
Fin Funcion

Funcion mostrar_edades(edad Por Referencia, edad_actual)
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "la persona: " ," " i, " "  , " " "tiene", " " edad[i]  " " "años";
	Fin Para
Fin Funcion

Funcion edad_actual <- tomar_edad_actual(edad Por Referencia)
	Definir edad_actual, año_actual Como Real;
	
	año_actual <- 2025
	
	edad[4] <- año_actual
	
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		edad_actual <- edad[4] - edad[i]
		
		edad[i] <- edad_actual
	Fin Para
	
	
Fin Funcion

Funcion año_nacimiento <- tomar_edad(edad Por Referencia)
	Definir año_nacimiento Como Entero;
	
	año_nacimiento <- 0
	Para i <- 1  Hasta 3 Con Paso 1 Hacer
		Escribir "ingrese el año en que nacio";
		Leer año_nacimiento;
		edad[i] <- año_nacimiento;
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
	
	Algoritmo calcularedad

		
		Definir segun_menu, dato_de_nacimiento, edad_2025 Como Real;
		
		Dimension edad[4];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				
				caso 1:
					Escribir "guardar datos";
					
					dato_de_nacimiento <- tomar_edad(edad);
				Caso 2:				
					Escribir "modificar datos";
					
					modificar_datos(edad);
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "VAS A SABER TU EDAD ACTUAL EN ESTE AÑO 2025:";
					
					
					edad_2025 <- tomar_edad_actual(edad)
					mostrar_edades(edad,edad_actual)
				Caso 4: 
					Escribir "salir del programa";
					
					imprimir_fin_programa(salir_programa)
				De Otro Modo:
					Escribir " NO ESTA DENTRO DE NUESTRAS OPCIONES";
			FinSegun
			
			Escribir "¿quieres continuar con tu proceso?";
			Leer respuesta;
		Hasta Que respuesta="no" o respuesta="N"
FinAlgoritmo
