Funcion listado_productos <- tomar_listado(productos Por Referencia)
	Definir i Como Real;
	
	Para i <- 1 Hasta numero_productos Hacer
		Escribir "producto ", i, ": ",productos[i];
	Fin Para
Fin Funcion

Funcion imprimir_sin_IVA(mensaje_total_sin_IVA)
	Escribir mensaje_total_sin_IVA;
Fin Funcion

Funcion imprimir_total_pagar(total_con_impuesto)
	Escribir total_con_impuesto;
Fin Funcion

Funcion total_con_impuesto <- Tomar_total_pagar(total_pagar)
	Definir total_con_impuesto Como Caracter;
	
	total_con_impuesto <- "el total a pagar por la compra con IVA es de: " + ConvertirATexto(total_pagar);
Fin Funcion

Funcion mensaje_total_sin_IVA <- tomar_resultado(sin_IVA)
	Definir mensaje_total_sin_IVA Como Caracter;
	
	mensaje_total_sin_IVA <- "el total sin IVA es: " + ConvertirATexto(sin_IVA);
Fin Funcion

Funcion imprimir_fin_programa(salir_programa)
	Escribir salir_programa;
Fin Funcion

Funcion salir_programa <- tomar_salida  
	Definir salir_programa Como Caracter;
	
	salir_programa <- "FIN DEL PROGRAMA";
Fin Funcion


Funcion total_pagar <- Tomar_total(sin_IVA)
	Definir total_pagar Como Real;
	
	total_pagar <- sin_IVA * 1.19
Fin Funcion

Funcion sin_IVA <- tomar_sin_IVA(total)
	Definir sin_IVA Como Real;
	
	Para i <- 1 Hasta numero_productos Con Paso 1 Hacer
		sin_IVA <- sin_IVA + total
	Fin Para
Fin Funcion

Funcion producto <- tomar_producto(productos Por Referencia)
	Definir producto Como Caracter;
	Definir numero_productos Como Entero;
	
	Escribir "digite cuantos productos vas a llevar";
	Leer numero_productos;
	
	Para i <- 1 Hasta numero_productos Con Paso 1 Hacer
		Escribir "escribe el producto : ", i;
		Leer producto;
	    productos[i] <- producto
		
		Definir total_pagar, precio, cant, total, sin_impuesto Como Real;
		
		Escribir "ingrese el precio del producto: ";
		Leer precio;
		
		Escribir "ingrese la cantidad del producto: "
		Leer cant;
		
		total <- precio * cant
	Fin Para
	
Fin Funcion

Funcion menu <- tomar_menu 
	Definir menu Como Entero;
	
	Escribir "-------MENU-------";
	Escribir "1- guardar datos del producto";
	Escribir "2- modificar datos del producto";
	Escribir "3- mostrar los datos del producto ";
	Escribir "4- salir del programa";
	
	Escribir "ingrese un numero del menu dependiendo de lo queras hacer";
	leer menu;
Fin Funcion


Algoritmo impuestoIVA
	
	
	Definir segun_menu, datos_productos, tota_sin_impuesto, total_compra Como Real;
	Dimension productos[numero_productos]
	
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos del producto: ";
				datos_productos <- tomar_producto(productos)
				
				
			Caso 2:
				Escribir "modificar datos del producto: ";
				datos_productos <- tomar_producto(productos)
				
				
			Caso 3:
				Escribir "mostrar los datos del producto: ";
				Escribir "LOS PRODUCTOS VENDIDOS SON"
				
				
				
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
