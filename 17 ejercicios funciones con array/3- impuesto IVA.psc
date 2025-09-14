Funcion modificar_datos(productos Por Referencia,producto)
	Definir nuevo_producto Como Caracter;
	
	Escribir "ingrese el numero del producto";
	Leer numeroo;
	
	Escribir "digita el nombre del producto que deseas cambiar";
	Leer nuevo_producto;
	productos[numeroo] <- nuevo_producto

Fin Funcion


Funcion imprimir_total_sin_impuesto(total_sin_impuesto)
	Escribir "el total de la compra sin IVA es de: ", total_sin_impuesto
Fin Funcion

Funcion imprimir_listado(productos Por Referencia , numero_productos)
	Definir i Como Real;
	
	Para i <- 1 Hasta numero_productos Hacer
		
		Escribir "producto ", i, ": "  + productos[i]
	Fin Para
Fin Funcion


Funcion imprimir_total_compra(total_pagar)
	
	Escribir  "el total a pagar por la compra con IVA es de: ", total_pagar
Fin Funcion

Funcion imprimir_fin_programa(salir_programa)
	Escribir salir_programa;
Fin Funcion

Funcion salir_programa <- tomar_salida  
	Definir salir_programa Como Caracter;
	
	salir_programa <- "FIN DEL PROGRAMA";
Fin Funcion


Funcion total_pagar <- tomar_total (total_sin_impuesto, productos Por Referencia)
	Definir total_pagar Como Real;
	
	total_pagar <- total_sin_impuesto * 1.19
Fin Funcion


Funcion total_sin_impuesto <-tomar_total_sin_impuesto(numero_productos,productos Por Referencia)
	Definir precio, cant, total, total_sin_impuesto, total_producto Como Real;
	Definir producto Como Caracter;
	

	Para i <- 1 Hasta numero_productos Con Paso 1 Hacer
		Escribir "escribe el producto : ", i;
		Leer producto;
		productos[i]<- producto
		
		Escribir "ingrese el precio del producto: ", i;
		Leer precio;
		
		Escribir "ingrese la cantidad del producto: ", i;
		Leer cant;
		
		total <- precio * cant
		
		total_producto <- total_producto + total
	
		total_sin_impuesto <- total_producto
		
		Escribir  "dddddd : " , total_sin_impuesto
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


Algoritmo impuestoIVA
	
	
	Definir segun_menu, datos_productos, total_impuesto Como Real;
	Definir  productos Como Caracter;
	Definir numero_productos Como Entero;
	
	Escribir "digite cuantos productos vas a llevar";
	Leer numero_productos;
	
	Dimension productos[numero_productos];
	
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos del producto: ";
				datos_productos <- tomar_total_sin_impuesto(numero_productos,productos);
				
				
			Caso 2:
				modificar_datos(productos,numero_productos)
				
				
				
			Caso 3:
				Escribir "mostrar los datos del producto: ";
				Escribir "LOS PRODUCTOS VENDIDOS SON";
				
				imprimir_listado(productos , numero_productos)
				imprimir_total_sin_impuesto(datos_productos)
			    total_impuesto <- tomar_total (datos_productos, productos)
				imprimir_total_compra(total_impuesto)
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
