	Funcion modificar_datos(productos Por Referencia)
		Definir nuevo_producto Como Caracter;
		
		Escribir "ingrese el numero del producto";
		Leer numeroo;
		
		Escribir "digita el nombre del producto que deseas cambiar";
		Leer nuevo_producto;
		productos[numeroo] <- nuevo_producto
		
	Fin Funcion
	
	
	
	Funcion imprimir_listado(productos Por Referencia)
		Definir i Como Real;
		
		Para i <- 1 Hasta 3  Con Paso 1 Hacer
			
			
			Escribir "producto ", i, ": "  + productos[i]
		Fin Para
	Fin Funcion
	
	
	Funcion imprimir_total_compra(total_pagar)
		
		Escribir  "el total a pagar por la compra es de: ", total_pagar
	Fin Funcion
	
	Funcion imprimir_fin_programa(salir_programa)
		Escribir salir_programa;
	Fin Funcion
	
	Funcion salir_programa <- tomar_salida  
		Definir salir_programa Como Caracter;
		
		salir_programa <- "FIN DEL PROGRAMA";
	Fin Funcion
	
	

	
	Funcion total_pagar <-tomar_total(productos Por Referencia)
		Definir precio, cant, total, total_sin_impuesto, total_producto Como Real;
		Definir producto Como Caracter;
		
		
		Para i <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir "escribe el producto : ", i;
			Leer producto;
			productos[i]<- producto
			
			Escribir "ingrese el precio del producto: ", i;
			Leer precio;
			
			Escribir "ingrese la cantidad del producto: ", i;
			Leer cant;
			
			total <- precio * cant
			
			total_producto <- total_producto + total
			
			total_pagar <- total_producto
			
			Escribir  "dddddd : " , total_pagar
			Escribir "pppppp", precio
			Escribir "ccccc: " , cant
		Fin Para
		
FinFuncion


Funcion menu <- tomar_menu 
	Definir menu Como Entero;
	
	Escribir "-------MENU-------";
	Escribir "1- guardar datos del producto";
	Escribir "2- modificar datos del producto";
	Escribir "3- mostrar los datos del producto ";
	Escribir "4- salir del programa";
	
	Escribir "ingrese un numero del menu dependiendo de lo quieras hacer";
	leer menu;
Fin Funcion


Algoritmo sumatresproductos
	
	
	Definir segun_menu, datos_productos, total_impuesto Como Real;
	Definir  productos Como Caracter;
	Definir numero_productos Como Entero;
	
	
	Dimension productos[3];
	
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos del producto: ";
				datos_productos <- tomar_total(productos);
				
				
			Caso 2:
				modificar_datos(productos)
				
			Caso 3:
				Escribir "mostrar los datos del producto: ";
				Escribir "LOS PRODUCTOS VENDIDOS SON";
				
				imprimir_listado(productos)
				
				imprimir_total_compra(datos_productos)
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
