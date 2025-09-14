Funcion modificar_datos(tiempo_horas Por Referencia)
	Escribir "ingrese un numero dependiendo si quieres cambiar 1 = valor de la hora 2 = horas trabajadas";
	Leer numeroo;
	
	Escribir "ingrese el nuevo valor ";
	Leer nuevo_valor;
	tiempo_horas[numeroo] <- nuevo_valor;
Fin Funcion

Funcion mostrar_datos(tiempo_horas Por Referencia,total_pagar)
	Escribir "el valor de la hora esta en: " , " " tiempo_horas[1];
	
	Escribir "las horas trabajadas son: ", " " tiempo_horas[2];
	
	Escribir "el total a pagar por las horas es de: ", " " total_pagar;
Fin Funcion

Funcion total_pagar <- tomar_total(tiempo_horas Por Referencia)
	Definir total_pagar Como Real;
	
	total_pagar <- tiempo_horas[1] * tiempo_horas[2];
Fin Funcion

Funcion tiempo_trabajado(tiempo_horas Por Referencia)
	Definir hora, valor_hora Como Real;
	
	Escribir "digite en cuanto esta la hora a trabajar";
	Leer valor_hora;
	tiempo_horas[1] <- valor_hora;
	
	Escribir "digite las horas trabajadas";
	Leer hora;
	tiempo_horas[2] <- hora;
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
	
	Algoritmo costototalenfunciondeltiempo

		
		Definir segun_menu, dato_de_nacimiento, edad_2025 Como Real;
		
		Dimension tiempo_horas[2];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				
				caso 1:
					Escribir "guardar datos";
					tiempo_trabajado(tiempo_horas)
				Caso 2:				
					Escribir "modificar datos";
					
					modificar_datos(tiempo_horas)
					
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "TIEMPO TRABAJADO:";
					
					tiempo_total <- tomar_total(tiempo_horas)
					mostrar_datos(tiempo_horas,tiempo_total)
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
