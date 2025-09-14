Funcion imprimir_productos_vendidos(numero_productos,productos Por Referencia)
	Para i <- 1 Hasta numero_productos Con Paso 1 Hacer
		Escribir "producto ", i, ": "  + productos[i];
	Fin Para
Fin Funcion


Funcion imprimir_total_compra(descuento_compra)
	
	Escribir " a el total se le hizo un descuento del 5%, siendo un restante de: ", descuento_compra;
Fin Funcion

Funcion descuento_compra <- tomar_descuento(total_producto)
	Definir descuento_compra Como Real;
	
	descuento_compra <- total_producto * 0.05
Fin Funcion

Funcion total_producto <- tomar_total(numero_productos,productos Por Referencia)
	
	Definir total_producto, precio, cant Como Real;
	Definir producto Como Caracter;
	
	total_producto <- 0
	
	Para i <- 1 Hasta numero_productos Con Paso 1 Hacer
		Escribir "escriba el producto que desea llevar"
		Leer producto;
		
		Escribir "digite el precio del producto: " , i;
		Leer precio;
		
		Escribir "digite la cantidad que  desea llevar del producto: ", i;
		Leer cant;
		
		productos[i] <- producto
		total_producto <- precio * cant
		
	Fin Para
	
	
Fin Funcion

Funcion imprimir_fin_programa(salir_programa)
	Escribir "FIN DEL PROGRAMA";
Fin Funcion



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



Algoritmo descunetoaunacompra
	Definir segun_menu, numero_productos, datos_productos Como Real;
	
	Escribir "ingrese cuantos productos deseas llevar";
	Leer numero_productos;
	
	Dimension productos[numero_productos]
	
	
	Repetir
		segun_menu <- tomar_menu 
		
		Segun segun_menu Hacer
			caso 1:
				Escribir "guardar datos del producto";				
				datos_productos <-  tomar_total(numero_productos,productos)
			Caso 2:
				Escribir "modificar datos del producto";
				
				
				datos_productos <-  tomar_total(numero_productos,productos)
				
			Caso 3:
				Escribir "mostrar los datos del producto";
				Escribir "LOS PRODUCTOS VENDIDOS SON";
				
				
				imprimir_productos_vendidos(numero_productos,productos)
				descuento <- tomar_descuento(datos_productos)
				imprimir_total_compra(descuento)
				
				
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

	
