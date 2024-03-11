Algoritmo promedioDeAlumnos
	indice<-0
	Mientras indice < 15 Hacer
		Escribir "Cuál es tu nombre? "
		Leer nombreAlumno
		Escribir "Ingresa la primera calificación: "
		Leer calificacionUno
		Escribir "Ingresa la segunda calificación: "
		Leer calificacionDos
		Escribir "Ingresa la tercera calificación: "
		Leer calificacionTres
		promedio<-(calificacionUno + calificacionDos + calificacionTres) / 3
		Escribir "El promedio de ",  nombreAlumno, " es : ",  promedio
		indice = indice + 1
	Fin Mientras
FinAlgoritmo
