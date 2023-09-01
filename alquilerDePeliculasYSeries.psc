Algoritmo alquilerDePeliculasYSeries
	Definir nombrePelicula, contenidoParaAlquilar, precioAlquiler, genero, idPelicula, nombreSerie, idSerie Como Caracter;
	Definir opcionElegida, opcionVerCatalogo, tipoElegido, quiereAlquilar, criterioDeBusqueda, respuesta, token, confirmacion, costoSuscripcionMensual Como Entero;
	respuesta <- 0;
	token <- 0;
	costoSuscripcionMensual <- 3000;
	
	//Lista de Pel�culas
	Dimension peliculas[10, 5];
	
	//Lista de Series
	Dimension series[10, 5];
	
	//Cat�logo de Pel�culas
	peliculas[0, 0] <- "1";
	peliculas[0, 1] <- "La casa sobre el pantano";
	peliculas[0, 2] <- "Terror";
	peliculas[0, 3] <- "Descripci�n: Unas vacaciones familiares toman un giro siniestro cuando aparecen vecinos extra�amente amigables";
	peliculas[0, 4] <- "500";
	
	peliculas[1, 0] <- "2";
	peliculas[1, 1] <- "La maldici�n renace";
	peliculas[1, 2] <- "Terror";
	peliculas[1, 3] <- "Descripci�n: Una investigadora sigue el rastro de un caso aterrador hasta una casa maldita que alberga una historia enmara�ada y espantosa ligada a una furia implacable";
	peliculas[1, 4] <- "500";
	
	peliculas[2, 0] <- "3";
	peliculas[2, 1] <- "Ni idea";
	peliculas[2, 2] <- "Romance";
	peliculas[2, 3] <- "Descripci�n: Cher, la abeja reina de una escuela de Beverly Hills, se destaca por dar cambios de imagen y jugar a ser cupido. �Pero eso de resolver su vida amorosa?";
	peliculas[2, 4] <- "0";
	
	peliculas[3, 0] <- "4";
	peliculas[3, 1] <- "Orgullo y prejuicio";
	peliculas[3, 2] <- "Romance";
	peliculas[3, 3] <- "Descripci�n: La obstinada Elizabeth Bennet (Keira Knightley) y el orgulloso Sr. Darcy (Matthew Macfadyen) intentan eludir sus sentimientos en esta adaptaci�n de Jane Austen";
	peliculas[3, 4] <- "300";
	
	peliculas[4, 0] <- "5";
	peliculas[4, 1] <- "Lo imposible";
	peliculas[4, 2] <- "Drama";
	peliculas[4, 3] <- "Descripci�n: Este drama atrapante narra el caos que vivi� una familia debido al tsunami de 2004 en la costa del sudeste asi�tico";
	peliculas[4, 4] <- "0";
	
	peliculas[5, 0] <- "6";
	peliculas[5, 1] <- "Miedo profundo";
	peliculas[5, 2] <- "Drama";
	peliculas[5, 3] <- "Descripci�n: Una joven que practicaba surf en una solitaria playa mexicana queda atrapada en un islote a solo cien metros de la costa. La distancia es corta, pero un enorme tibur�n blanco se interpone entre ella y la otra orilla";
	peliculas[5, 4] <- "300";
	
	peliculas[6, 0] <- "7";
	peliculas[6, 1] <- "La mujer de mis pesadillas";
	peliculas[6, 2] <- "Comedia";
	peliculas[6, 3] <- "Descripci�n: Convencido de que dio con la mujer ideal, un hombre decide casarse con ella sin conocerla bien. Pero, en la luna de miel, descubre que cometi� un grave error";
	peliculas[6, 4] <- "0";
	
	peliculas[7, 0] <- "8";
	peliculas[7, 1] <- "�Y d�nde est�n las rubias?";
	peliculas[7, 2] <- "Comedia";
	peliculas[7, 3] <- "Descripci�n: Dos torpes agentes del FBI se hacen pasar por dos chicas de la alta sociedad para investigar una serie de secuestros. No obstante, mientras preparan su plan, descubren que irrumpir en la clase privilegiada es mucho m�s duro de lo que cre�an";
	peliculas[7, 4] <- "300";
	
	peliculas[8, 0] <- "9";
	peliculas[8, 1] <- "Agente Stone";
	peliculas[8, 2] <- "Novedades";
	peliculas[8, 3] <- "Descripci�n: Rachel Stone es una agente de inteligencia, la �nica mujer que se interpone entre su poderosa organizaci�n mundial de mantenimiento de la paz y la p�rdida de su activo m�s valioso y peligroso";
	peliculas[8, 4] <- "1000";
	
	peliculas[9, 0] <- "10";
	peliculas[9, 1] <- "The Flash";
	peliculas[9, 2] <- "Novedades";
	peliculas[9, 3] <- "Descripci�n: Flash viaja a trav�s del tiempo para evitar el asesinato de su madre, pero, sin saberlo, provoca una serie de cambios que originan la creaci�n de un multiverso";
	peliculas[9, 4] <- "1000";
	
	//Cat�logo de Series
	series[0, 0] <- "1";
	series[0, 1] <- "Stranger Things";
	series[0, 2] <- "Terror";
	series[0, 3] <- "Descripci�n: A ra�z de la desaparici�n de un ni�o, un pueblo desvela un misterio relacionado con experimentos secretos, fuerzas sobrenaturales aterradoras y una ni�a muy especial";
	series[0, 4] <- "500";
	
	series[1, 0] <- "2";
	series[1, 1] <- "Dahmer";
	series[1, 2] <- "Terror";
	series[1, 3] <- "Descripci�n:  A lo largo de m�s de una d�cada, 17 adolescentes y j�venes fueron asesinados por el criminal convicto Jeffrey Dahmer. �C�mo evit� ser capturado durante tanto tiempo?";
	series[1, 4] <- "500";
	
	series[2, 0] <- "3";
	series[2, 1] <- "Bridgerton";
	series[2, 2] <- "Romance";
	series[2, 3] <- "Descripci�n: Basada en las c�lebres novelas de Julia Quinn, la serie narra las vidas de los ocho hermanos Bridgerton mientras buscan amor y felicidad en la alta sociedad londinense.";
	series[2, 4] <- "500";
	
	series[3, 0] <- "4";
	series[3, 1] <- "Heartstopper";
	series[3, 2] <- "Romance";
	series[3, 3] <- "Descripci�n: Los adolescentes Charlie y Nick descubren que su amistad podr�a ser mucho m�s que eso mientras lidian con la escuela y el amor en esta serie sobre la adolescencia";
	series[3, 4] <- "500";
	
	series[4, 0] <- "5";
	series[4, 1] <- "The walking dead";
	series[4, 2] <- "Drama";
	series[4, 3] <- "Descripci�n: En el alba de un apocalipsis zombi, los sobrevivientes se aferran a la esperanza de la humanidad uni�ndose para librar una batalla por su supervivencia";
	series[4, 4] <- "500";
	
	series[5, 0] <- "6";
	series[5, 1] <- "The witcher";
	series[5, 2] <- "Drama";
	series[5, 3] <- "Descripci�n: Geralt, Yennefer y Ciri viajan hasta el rinc�n m�s lejano del Continente en busca de un refugio seguro. El rey Vizimir usa el encanto de su hermano menor a su favor";
	series[5, 4] <- "500";
	
	series[6, 0] <- "7";
	series[6, 1] <- "The office (EE.UU.)";
	series[6, 2] <- "Comedia";
	series[6, 3] <- "Descripci�n: El iluso jefe Michael intenta encauzar el descontento de su empleados en la empresa papelera Dunder Mifflin a trav�s de continuas debilidades y percances";
	series[6, 4] <- "0";
	
	series[7, 0] <- "8";
	series[7, 1] <- "Casados con hijos";
	series[7, 2] <- "Comedia";
	series[7, 3] <- "Descripci�n: Narra la vida de una familia de clase media, los Argento, y la convivencia con sus vecinos, los Fuseneco. Pepe Argento es el cabeza de familia y trabaja en una zapater�a a la espera de que pase algo que le saque de la monoton�a en la que vive";
	series[7, 4] <- "0";
	
	series[8, 0] <- "9";
	series[8, 1] <- "Outlander";
	series[8, 2] <- "Novedades";
	series[8, 3] <- "Descripci�n: Claire es transportada a la Escocia de 1743, y la integridad de su vida y coraz�n est�n en riesgo";
	series[8, 4] <- "1000";
	
	series[9, 0] <- "10";
	series[9, 1] <- "Los protectores";
	series[9, 2] <- "Novedades";
	series[9, 3] <- "Descripci�n: Un empresario decide armar una agencia de representaci�n y quitarle jugadores a Protectores S.A";
	series[9, 4] <- "1000";
	
	Escribir "Bienvenid@ a VerCine+";
	Escribir "�La mejor aplicaci�n con todo el contenido en pel�culas y series actualizado que quer�s ver!"
	Escribir "";
	
	Repetir
		Repetir
			Escribir "Ingresa la opci�n deseada: ";
			Escribir "1- VER NUESTRO CAT�LOGO DE PEL�CULAS Y SERIES:";
			Escribir "2- ALQUILAR POR 48 HS:";
			Escribir "3- SUSCRIPCI�N MENSUAL:";
			Escribir "4- SALIR";
			Leer opcionElegida;
			Escribir "";
			
			Si No estaEnRango(opcionElegida, 1, 4) Entonces
				Escribir "Error! Ingrese una opci�n correcta.";
				Escribir "";
			Fin Si
		Hasta Que estaEnRango(opcionElegida, 1, 4); 
		
		Segun opcionElegida Hacer
			1:  
				Repetir
					Escribir "Ingresa la opci�n deseada:";
					Escribir "1- VER CAT�LOGO DE PEL�CULAS:";
					Escribir "2- VER CAT�LOGO DE SERIES:";
					Escribir "3- VER TODO:";
					Escribir "4- SALIR";
					Leer opcionVerCatalogo;
					Escribir "";
					
					Si No estaEnRango(opcionVerCatalogo, 1, 4) Entonces
						Escribir "Error! Ingrese una opci�n correcta.";
						Escribir "";
					Fin Si
					
				Hasta Que estaEnRango(opcionVerCatalogo, 1, 4); 
				
				Si opcionVerCatalogo = 1 O opcionVerCatalogo = 3 Entonces
					//Muestra las pel�culas
					Escribir "Cat�logo de Pel�culas: ";
					Para i <- 0 Hasta 9 Hacer
						Para j <- 0 Hasta 4 Hacer
							Si peliculas[i, j] = peliculas[i, 0] Entonces
								Escribir "";
								Escribir "ID pel�cula:", peliculas[i, j], " - " Sin Saltar;
							Fin Si	
							Si  peliculas[i, j]  =  peliculas[i, 4] Entonces
								Escribir "Precio alquiler: $", peliculas[i, j];
							Fin Si
							Si peliculas[i, j] <> peliculas[i, 0] Y peliculas[i, j] <>  peliculas[i, 4] Entonces
								Escribir peliculas[i, j], " - " Sin Saltar;
							Fin Si
						Fin Para
						
						Escribir "";
					Fin Para
					
					Escribir "";
				Fin Si
				
				Si opcionVerCatalogo = 2 O opcionVerCatalogo = 3 Entonces
					//Muestra las series
					Escribir "Cat�logo de Series: ";
					
					Para i <- 0 Hasta 9 Hacer
						Para j <- 0 Hasta 4 Hacer
							Si series[i, j] = series[i, 0] Entonces
								Escribir "";
								Escribir "ID serie:", series[i, j], " - " Sin Saltar;
							Fin Si	
							Si  series[i, j]  =  series[i, 4] Entonces
								Escribir "Precio alquiler: $", series[i, j];
							Fin Si
							Si series[i, j] <> series[i, 0] Y series[i, j] <>  series[i, 4] Entonces
								Escribir series[i, j], " - " Sin Saltar;
							Fin Si
						Fin Para
						
						Escribir "";
					Fin Para
					
					Escribir "";
				Fin Si
				
			2:
				Repetir
					Escribir "Ingresa la opci�n deseada: ";
					Escribir "1- Alquilar una pel�cula:";
					Escribir "2- Alquilar una serie:";
					Escribir "3- SALIR";
					Leer tipoElegido;
					Escribir "";
					
					Si No estaEnRango(tipoElegido, 1, 3) Entonces
						Escribir "Error! Ingrese una opci�n correcta.";
						Escribir "";
					Fin Si
				Hasta Que estaEnRango(tipoElegido, 1, 3); 
				
				quiereAlquilar <- 0;
				
				Si tipoElegido = 1 Entonces
					Repetir
						Escribir "Ingresa la opci�n deseada: ";
						Escribir "1- Buscar pel�cula por nombre:";
						Escribir "2- Buscar pel�cula por g�nero:";
						Escribir "3- SALIR";
						Leer criterioDeBusqueda;
						Escribir "";
						
						Si No estaEnRango(criterioDeBusqueda, 1, 3) Entonces
							Escribir "Error! Ingrese una opci�n correcta.";
							Escribir "";
						Fin Si
					Hasta Que estaEnRango(criterioDeBusqueda, 1, 3);
					
					Si criterioDeBusqueda = 1 Entonces
						Escribir "Escriba el nombre de la pel�cula: ";
						Leer nombrePelicula;
						Escribir "";
						
						peliculaEncontrada <- Falso;
						
						//Busca una pel�cula por nombre
						Para i <- 0 Hasta 9 Hacer
							Si iguales(peliculas[i, 1], nombrePelicula) Entonces
								peliculaEncontrada <- Verdadero;
								Escribir "El precio para alquilar la pel�cula ", peliculas[i, 1], " es de: $", peliculas[i, 4],". �Desea Continuar?";
								Escribir "1- SI";
								Escribir "2- NO";
								Leer quiereAlquilar;
								contenidoParaAlquilar <- peliculas[i, 1];
								precioAlquiler <- peliculas[i, 4];
							Fin Si
						Fin Para
						
						Si No peliculaEncontrada Entonces
							Escribir "No se encontr� la pel�cula.";
							Escribir "";
						Fin Si
					Fin Si
					
					Si criterioDeBusqueda = 2 Entonces
						Escribir "Ingrese el g�nero de la pel�cula: ";
						Escribir "Terror";
						Escribir "Romance";
						Escribir "Drama";
						Escribir "Novedades";
						Leer genero;
						Escribir "";
						
						generoEncontrado <- Falso;
						
						//Busca una pel�cula por g�nero
						Para i <- 0 Hasta 9 Hacer
							Para j <- 0 Hasta 4 Hacer
								Si iguales(peliculas[i, 2], genero) Entonces
									generoEncontrado <- Verdadero;
									Si peliculas[i, j] = peliculas[i, 0] Entonces
										Escribir "";
										Escribir "ID pel�cula:", peliculas[i, j];
									Fin Si
									Si  peliculas[i, j]  =  peliculas[i, 4] Entonces
										Escribir "Precio alquiler: $", peliculas[i, j];
									Fin Si
									Si peliculas[i, j] <> peliculas[i, 0] Y peliculas[i, j] <>  peliculas[i, 4] Entonces
										Escribir peliculas[i, j];
									Fin Si
								Fin Si
							Fin Para
						Fin Para
						
						Si No generoEncontrado Entonces
							Escribir "No se encontr� el g�nero.";
							Escribir "";
						SiNo
							Escribir "";
							Escribir "�Alguna pel�cula te gust�?: ";
							Escribir "1- SI";
							Escribir "2- NO";
							Leer respuesta;
							Escribir "";
							
							Si respuesta = 1 Entonces
								Escribir "Escriba el ID de la pel�cula: ";
								Leer idPelicula;
								Escribir "";
								
								//Busca una pel�cula por id
								Para i <- 0 Hasta 9 Hacer
									Si peliculas[i, 0] = idPelicula Entonces
										Escribir "El precio para alquilar la pel�cula ", peliculas[i, 1], " es de: $", peliculas[i, 4],". �Desea Continuar?";
										Escribir "1- SI";
										Escribir "2- NO";
										Leer quiereAlquilar;
										contenidoParaAlquilar <- peliculas[i, 1];
										precioAlquiler <- peliculas[i, 4];
									Fin Si
								Fin Para
							Fin Si
						Fin Si
					Fin Si
				Fin Si
				
				Si tipoElegido = 2 Entonces
					Repetir
						Escribir "Ingresa la opci�n deseada: ";
						Escribir "1- Buscar serie por nombre:";
						Escribir "2- Buscar serie por g�nero:";
						Escribir "3- SALIR";
						Leer criterioDeBusqueda;
						Escribir "";
						
						Si No estaEnRango(criterioDeBusqueda, 1, 3) Entonces
							Escribir "Error! Ingrese una opci�n correcta.";
							Escribir "";
						Fin Si
					Hasta Que estaEnRango(criterioDeBusqueda, 1, 3); 
					
					Si criterioDeBusqueda = 1 Entonces
						Escribir "Escriba el nombre de la serie: ";
						Leer nombreSerie;
						Escribir "";
						
						serieEncontrada <- Falso;
						
						//Busca una serie por nombre
						Para i <- 0 Hasta 9 Hacer
							Si iguales(series[i, 1], nombreSerie) Entonces
								serieEncontrada <- Verdadero;
								Escribir "El precio para alquilar la serie ", series[i, 1], " es de: $", series[i, 4],". �Desea Continuar?";
								Escribir "1- SI";
								Escribir "2- NO";
								Leer quiereAlquilar;
								contenidoParaAlquilar <- series[i, 1];
								precioAlquiler <- series[i, 4];
							Fin Si
						Fin Para
						
						Si No serieEncontrada Entonces
							Escribir "No se encontr� la serie.";
							Escribir "";
						Fin Si
					Fin Si
					
					Si criterioDeBusqueda = 2 Entonces
						Escribir "Ingrese el g�nero de la serie: ";
						Escribir "Terror";
						Escribir "Romance";
						Escribir "Drama";
						Escribir "Novedades";
						Leer genero;
						
						generoEncontrado <- Falso;
						
						//Busca una serie por g�nero
						Para i <- 0 Hasta 9 Hacer
							Para j <- 0 Hasta 4 Hacer
								Si iguales(series[i, 2], genero) Entonces
									generoEncontrado <- Verdadero;	
									Si series[i, j] = series[i, 0] Entonces
										Escribir "";
										Escribir "ID serie:", series[i, j];
									Fin Si	
									Si  series[i, j]  =  series[i, 4] Entonces
										Escribir "Precio alquiler: $", series[i, j];
									Fin Si
									Si series[i, j] <> series[i, 0] Y series[i, j] <>  series[i, 4] Entonces
										Escribir series[i, j];
									Fin Si
								Fin Si
							Fin Para
						Fin Para
						
						Si No generoEncontrado Entonces
							Escribir "No se encontr� el g�nero.";
							Escribir ""; 
						SiNo
							Escribir "";
							Escribir "�Alguna serie te gust�?: ";
							Escribir "1- SI";
							Escribir "2- NO";
							Leer respuesta;
							Escribir "";
							
							Si respuesta = 1 Entonces
								Escribir "Escriba el ID de la serie: ";
								Leer idSerie;
								
								//Busca una serie por id
								Para i <- 0 Hasta 9 Hacer
									Si series[i, 0] = idSerie Entonces
										Escribir "El precio para alquilar la serie ", series[i, 1], " es de: $", series[i, 4],". �Desea Continuar?";
										Escribir "1- SI";
										Escribir "2- NO";
										Leer quiereAlquilar;
										contenidoParaAlquilar <- series[i, 1];
										precioAlquiler <- series[i, 4];
									Fin Si
								Fin Para
							Fin Si
						Fin Si
					Fin Si
				Fin Si
				
				confirmacion <- 0;
				
				Si quiereAlquilar = 1 Entonces
					solicitarDatosPago();
					
					Escribir "�Desea confirmar operaci�n?";
					Escribir "1- SI";
					Escribir "2- NO";
					Leer confirmacion;
					Escribir "";
					
					Si confirmacion = 1 Entonces
						Escribir "�Felicitaciones alquil� con �xito: ", contenidoParaAlquilar, ", por 48 hs!";
						Escribir "Puede verla en el siguiente enlace: www.vercine+.com/", Minusculas(contenidoParaAlquilar), "?auth_token=a800tk", token;
						token <- token + 1;
						Escribir "";
					Fin Si
				Fin Si
				
				Si quiereAlquilar = 2  O respuesta = 2  O confirmacion = 2 Entonces
					Escribir "�No te gust�? Tenemos m�s opciones en nuestro Cat�logo.";
					Escribir "";
				Fin Si
				
			3: 	
				confirmacion <- 0;
				
				Escribir "�Acceda a todo nuestro contenido de forma ilimitada y sin restricciones!";
				Escribir "La suscipci�n mensual a VerCine+ es de: $", costoSuscripcionMensual;
				Escribir "�Desea confirmar operaci�n?";
				Escribir "1- SI";
				Escribir "2- NO";
				Leer confirmacion;
				Escribir "";
				
				Si confirmacion = 1
					solicitarDatosPago();
					
					Escribir "";
					Escribir "�Felicitaciones se suscribi� con �xito!";
					Escribir "";
				Fin Si
	    Fin Segun
	Hasta Que opcionElegida = 4;
	
	Escribir "�Muchas gracias por visitar nuestra p�gina! Volv� pronto =)";
FinAlgoritmo

//Funciones:
SubAlgoritmo resultado <- estaEnRango(x, minimo, maximo)
	resultado <- x >= minimo Y x <= maximo;
FinSubAlgoritmo

SubAlgoritmo sonIguales <- iguales ( nombre1, nombre2 )
	sonIguales <- Mayusculas(nombre1) = Mayusculas(nombre2);
Fin SubAlgoritmo

SubAlgoritmo solicitarDatosPago
	Escribir "Por favor ingrese los siguientes datos: ";
	Escribir "Ingrese un email:";
	Leer email;
	Escribir "Medio de pago- Por favor seleccione uno: ";
	Escribir "1- VISA";
	Escribir "2- AMEX";
	Escribir "3- MASTERCARD";
	Escribir "4- NARANJA";
	Escribir "5- CENCOSUD";
	Escribir "6- DINERS";
	Escribir "7- CABAL";
	Leer tipoTarjeta;
	Escribir "N�mero de Tarjeta:";
	Leer numeroTarjeta;
	Escribir "Ingrese Nombre del Titular:";
	Leer nombre;
	Escribir "Ingrese DNI del Titular:";
	Leer dni;
	Escribir "Fecha de Vencimiento:";
	Leer vencimientoTarjeta;
	Escribir "C�digo de Seguridad:";
	Leer codigoTarjeta;
Fin SubAlgoritmo