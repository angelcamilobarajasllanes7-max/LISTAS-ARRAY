Funcion mostrar_velocidad(total_velocidad Por Referencia)
	
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "velocidad del carro: " , " " i " " total_velocidad[i];
	Fin Para
Fin Funcion

Funcion mostrar_datos(dato1 Por Referencia, dato2)
	
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "la distancia del carro: ",  i " " "=" dato1[i]
		
			Escribir "el tiempo recorrido del carro: ", i " " "=" dato2[i]
	Fin Para
	
	
Fin Funcion

Funcion modificar_datos(dato1 Por Referencia, dato2 Por Referencia)
	Escribir "ingrese el numero dependiendo si quieres cambiar distancia= 1 o 2 ";
	Leer numeroo1;
	
	Escribir "ingrese el numero dependiendo si quieres cambiar tiempo= 1 o 2";
	Leer numeroo2;
	
	Escribir "ingrese el nuevo valor distancia";
	Leer nuevo_total1;
	
	Escribir "ingrese el nuevo valor tiempo";
	Leer nuevo_total2;
	
	dato1[numeroo1] <- nuevo_total1;
	dato2[numeroo2] <- nuevo_total2;
Fin Funcion

Funcion velocidad_carros <- tomar_velociad(total_velocidad Por Referencia,dato1 Por Referencia, dato2 Por Referencia)
	Definir velocidad_carros Como Real;
	
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		velocidad_carros <- dato1[i]/dato2[i] 
		
		total_velocidad[i] <- velocidad_carros
	Fin Para
	
	
	Escribir "ttt", velocidad_carros
Fin Funcion

Funcion datos_distancia_tiempo(dato1 Por Referencia, dato2)
	Definir diatancia, tiempo Como Real;
	
	Para i <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "ingrese el la distancia del carro: ", " " i;
		Leer distancia;
		dato1[i] <- distancia
		
			Escribir "ingrese el tiempo recorrido del carro: ", " " i;
			Leer tiempo;
			dato2[i] <- tiempo
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
	
	
	Algoritmo velocidaddoscarros
	
		Definir segun_menu Como Real;
		
		Dimension dato1[2];
		Dimension dato2[2];
		Dimension total_velocidad[2]
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				
				caso 1:
					Escribir "guardar datos";
					datos_distancia_tiempo(dato1, dato2)
				Caso 2:				
					Escribir "modificar datos";
					modificar_datos(dato1,dato2)
				Caso 3:      
					Escribir "mostrar los datos";
					
					Escribir "TIEMPO TRABAJADO:";
					velocidad_dos_carros <- tomar_velociad(total_velocidad,dato1,dato2)
					mostrar_datos(dato1,dato2)
					mostrar_velocidad(total_velocidad)
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
