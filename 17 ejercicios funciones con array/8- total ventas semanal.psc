Funcion mostrar_ganancia_neta(ganancia Por Referencia,ganancia_neta)
	Escribir "ingresos: " , " " ganancia[1] 
	Escribir "gastos: " " " ganancia[2]
	Escribir "la ganacia neta es: " , " " ganancia_neta;
Fin Funcion

Funcion cambiar_datos(ganancia Por Referencia)
	Escribir "ingrese un numero de pendiendo de lo que quieras cambiar 1 = ingresos o 2 = gastos";
	Leer numeroo;
	
	Escribir "ingresa el nuevo valor"
	Leer nuevo_valor;
	
	ganancia[numeroo] <- nuevo_valor;
Fin Funcion

Funcion ganancia_neta <- tomar_ganancia(ganancia Por Referencia)
	Definir ganacia_neta Como Real;
	
	ganancia_neta <- ganancia[1] - ganancia[2];
Fin Funcion

Funcion ingresos_gastos(ganancia Por Referencia)
	Escribir "ingrese los ingresos ";
	Leer ingresos;
	ganancia[1] <- ingresos;
	
	Escribir "ingrese los gastos";
	Leer gastos;
	ganancia[2] <- gastos;
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
		
		
		Definir segun_menu, total_ganancia Como Real;
		
		Dimension ganancia[2];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				caso 1:
					Escribir "guardar datos";
					ingresos_gastos(ganancia)
				Caso 2:				
					Escribir "modificar datos";
					cambiar_datos(ganancia)
				Caso 3:      
					Escribir "mostrar los datos";
					Escribir "VENTAS DURANTE LA SEMANA FUE:";
					
					total_ganancia <- tomar_ganancia(ganancia)
					mostrar_ganancia_neta(ganancia,total_ganancia)
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
