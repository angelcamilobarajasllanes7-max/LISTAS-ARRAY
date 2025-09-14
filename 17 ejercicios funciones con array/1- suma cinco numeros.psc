Funcion lista_numeros(numeross por referencia)
	Definir i Como Entero;
	Escribir "Números almacenados:";
	
	Para i <- 1 Hasta 5 Hacer
		Escribir "Número ", i, ": ",numeross[i];
	Fin Para
Fin Funcion
	

Funcion imprimir_fin_programa(salir_programa)
	Escribir salir_programa;
Fin Funcion

Funcion salir_programa <- tomar_salida  
	Definir salir_programa Como Caracter;
	
	salir_programa <- "FIN DEL PROGRAMA";
Fin Funcion

Funcion menu <- tomar_menu 
	Definir menu Como Entero;
	
	Escribir "-------MENU-------";
	Escribir "1- guardar datos";
	Escribir "2- modificar datos";
	Escribir "3- mostrar los datos ";
	Escribir "4- salir del programa";
	
	Escribir "ingrese un numero del menu dependiendo de lo quieras hacer";
	leer menu;
Fin Funcion

Funcion imprimir_suma(mensaje)
	Escribir mensaje;
Fin Funcion

Funcion mensaje <- tomar_mensaje(suma)
	Definir mensaje Como Caracter;
	
	mensaje <- "el total de la suma de  estos cinco numeros es: " + ConvertirATexto(suma);
Fin Funcion

Funcion suma <- sumar_numeros(numeroo,numeross)
	Definir suma Como Real;
	Definir i Como Entero;
	suma <- 0
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		suma <- suma + numeross[i]
	Fin Para
Fin Funcion


Funcion numeroo <- tomar_numero(numeross Por Referencia)
	Definir numeroo Como Real;
	Definir i  Como Entero;
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "ingrese cinco numeros para hacer una suma";
		Leer numeroo;
		numeross[i] <- numeroo
		
	Fin Para
	
Fin Funcion

// --------------------------------------------------------------------------//
Algoritmo sumacinconumeros
	
	Definir numeross, sumanumeros,total, cinco_numeros, segun_menu, numeros_sumar Como Entero;
	Definir textoo, fin_programa, finn, respuesta Como Caracter;
	
	Dimension numeross[5];
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos";
				
				cinco_numeros <-  tomar_numero(numeross)			
				
			Caso 2:
				Escribir "modificar datos";
				cinco_numeros <-  tomar_numero(numeross)
				
				
			Caso 3:
				Escribir "mostrar los datos";
				numeross[5] <- todos_numeros
				
				lista_numeros(numeross);
				
				sumanumeros <- sumar_numeros(cinco_numeros,numeross);
				textoo <- tomar_mensaje(sumanumeros);
				imprimir_suma(textoo);
				
			Caso 4: 
				Escribir "salir del programa";
				fin_programa <-tomar_salida;
				imprimir_fin_programa(finn);
				
			De Otro Modo:
				Escribir " NO ESTA DENTRO DE NUESTRAS OPCIONES";
		FinSegun
		
		Escribir "¿quieres continuar con tu proceso?";
		Leer respuesta;
	Hasta Que respuesta="no" o respuesta="No"
	
	
FinAlgoritmo
