Algoritmo promedioDeAlumnos
	indice<-0
	Mientras indice < 15 Hacer
		Escribir "Cu�l es tu nombre? "
		Leer nombreAlumno
		Escribir "Ingresa la primera calificaci�n: "
		Leer calificacionUno
		Escribir "Ingresa la segunda calificaci�n: "
		Leer calificacionDos
		Escribir "Ingresa la tercera calificaci�n: "
		Leer calificacionTres
		promedio<-(calificacionUno + calificacionDos + calificacionTres) / 3
		Escribir "El promedio de ",  nombreAlumno, " es : ",  promedio
		indice = indice + 1
	Fin Mientras
FinAlgoritmo
