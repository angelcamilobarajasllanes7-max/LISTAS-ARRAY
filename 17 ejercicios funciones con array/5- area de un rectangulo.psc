Funcion mostrar_base_altura(area_rectangulo Por Referencia)
	
	Escribir "base: ", area_rectangulo[2] , " " "altura: ", area_rectangulo[1];
Fin Funcion

Funcion modificar_datos(area_rectangulo Por Referencia)
	Escribir "ingrese un numero dependiendo si quieres cambiar base = 1 o altura = 2";
	Leer numeroo;
	
	Escribir "ingrese el valor a cambiar";
	Leer nuevo_valor;
	area_rectangulo[2] <- nuevo_valor;
Fin Funcion

Funcion imprimir_area(area_total)
	Escribir "el area del rectangulo es: ", area_total;
Fin Funcion

Funcion area_total <- tomar_total(area_rectangulo Por Referencia)
	Definir area_total Como Real;
	
	area_total <- area_rectangulo[1] * area_rectangulo[2]
Fin Funcion

Funcion datos_rectangulo(area_rectangulo Por Referencia)
	Definir  base , altura Como Real;
	
		Escribir "ingrese la base del rectangulo";
		Leer base;
		
		area_rectangulo[1] <- base
		
			Escribir "ingrese la altura del rectangulo";
			Leer altura;
			
			area_rectangulo[2] <- altura
	
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


Algoritmo areadeunrectangulo
	
	
	Definir segun_menu, area Como Real;
	
	Dimension area_rectangulo[2]
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos";				
				datos_rectangulo(area_rectangulo);
			Caso 2:				
				Escribir "modificar datos";
				modificar_datos(area_rectangulo);
				
			Caso 3:
				Escribir "mostrar los datos";
				Escribir "DATOS BASE Y ALTURA";
				mostrar_base_altura(area_rectangulo);
				area <- tomar_total(area_rectangulo);
				imprimir_area(area);
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
