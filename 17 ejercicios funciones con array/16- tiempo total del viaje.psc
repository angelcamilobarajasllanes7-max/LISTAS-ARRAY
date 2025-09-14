Funcion modificar_datos(servicios Por Referencia)
	Escribir "ingresesa el numero del recibo que deseas cambiar";
	Leer numeroo;
	
	Escribir "ingrese el nuevo tiempo a cambiar";
	Leer nuevo_valor;
	servicios[numeroo] <- nuevo_valor;
Fin Funcion

Funcion mostrar_recibos(numero_recibos,servicios Por Referencia,consumo_total)
	Para i <- 1 Hasta numero_recibos Con Paso 1 Hacer
		Escribir "el total del recibo: " , " " i , " " "=" " " servicios[i];
	Fin Para
	Escribir "el total a pagar de los recibos  es de: ", " " "=" " " consumo_total;
Fin Funcion

Funcion consumo_total <- tomar_consumo(numero_recibos,servicios Por Referencia)
	Definir tiempo, total_recibo Como Real;
	
	consumo_total <- 0
	
	Para i <- 1 Hasta numero_recibos Con Paso 1 Hacer
		Escribir "ingrese el total del recibo: ", " " i;
		Leer total_recibo;
		servicios[i] <- total_recibo;
		
		
		consumo_total <- consumo_total + total_recibo
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
	
	Escribir "ingrese cuantos recibos vas a pagar";
	Leer numero_recibos;
	
	Dimension servicios[numero_recibos]
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos";
				total <- tomar_consumo(numero_recibos,servicios)
			Caso 2:				
				Escribir "modificar datos";
				
				modificar_datos(servicios)
			Caso 3:      
				Escribir "mostrar los datos";
				Escribir "RECIBOS A PAGAR";
				
				mostrar_recibos(numero_recibos,servicios,total)
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
