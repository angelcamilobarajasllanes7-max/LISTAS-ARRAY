Funcion modificar_datos(indice Por Referencia)
	Escribir "ingrese un numero dependiendo si quieres cambiar 1 = peso 2 = altura";
	Leer numeroo;
	
	Escribir "ingrese el nuevo valor ";
	Leer nuevo_valor;
	indice[numeroo] <- nuevo_valor;
Fin Funcion


Funcion mostrar_datos(indice Por Referencia, indice_masa_corporal)
	Escribir "peso: ", " " indice[1];
	Escribir "altura: ", " " indice[2];
	
	Escribir "tu indice de masa corporal es: ", indice_masa_corporal;
Fin Funcion

Funcion indice_masa_corporal <- tomar_indice(indice Por Referencia)
	Definir indice_masa_corporal Como Real;
	
	indice_masa_corporal <- indice[1] / (indice[2])^2
Fin Funcion

Funcion datos_peso_altura(indice Por Referencia)
	Definir peso, altura Como Real;
	
	Escribir "ingrese su peso ";
	Leer peso;
	indice[1] <- peso;
	
	Escribir "ingrese su altura";
	Leer altura;
	indice[2] <- altura;
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
	
		
	Algoritmo indicemasacorporal
	
		Definir segun_menu, masa_corporal Como Real;
		
		Dimension indice[2];
		
		Repetir
			segun_menu <- tomar_menu 
			
			Segun segun_menu Hacer
				
				caso 1:
					Escribir "guardar datos";
					datos_peso_altura(indice)
					
				Caso 2:				
					Escribir "modificar datos";
					modificar_datos(indice)
					
				Caso 3:      
					Escribir "mostrar los datos";
					
					Escribir "TIEMPO TRABAJADO:";
					masa_corporal <- tomar_indice(indice)
					mostrar_datos(indice,masa_corporal)
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
