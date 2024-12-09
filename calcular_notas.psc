Funcion opc = menu
	Escribir "1. Ingresar estudiantes"
	Escribir "2. Mostrar Estudiantes"
	Escribir "3. Calcular notas"
	Escribir "4. Salir"
	Escribir Sin Saltar "Elija una opcion: "
	leer opc
	Repetir
		si opc>4 O opc < 0 Entonces
			Escribir "Opcion incorrecta.."
			leer opc
		FinSi
	Hasta Que opc <= 4 Y opc >= 0
FinFuncion

Funcion x = ingresarEstudiantes(be,cantEstudiante, nom, cod, n1, n2, n3, in)
	be[cantEstudiante, 1] = nom
	be[cantEstudiante, 2] = cod
	be[cantEstudiante, 3] = n1
	be[cantEstudiante, 4] = n2
	be[cantEstudiante, 5] = n3
	be[cantEstudiante, 6] = in
	x = cantEstudiante + 1 
FinFuncion

Funcion mostrarlista(be,cantEstudiante)
	Escribir "REGISTRO ESTUDIANTES"
	Escribir "=============================="
	para i<- 1 Hasta cantEstudiante-1 Hacer
		Escribir "Nombre: ",be[i, 1]
		Escribir "Codigo: ",be[i, 2]
		Escribir "Nota 1: ",be[i, 3]
		Escribir "Nota 2: ",be[i, 4]
		Escribir "Nota 3: ",be[i, 5]
		Escribir "Inasistencias: ",be[i, 6]
		Escribir "=============================="
	FinPara
FinFuncion

	
Funcion calcularNotas(be, cantEstudiante)
	Escribir "TOTAL NOTAS"
	Escribir "******************************************"
	Para i <- 1 Hasta cantEstudiante - 1 Hacer
		suma = ConvertirANumero(be[i, 3]) + ConvertirANumero(be[i ,4]) + ConvertirANumero(be[i, 5]) 
		promedio = suma / 3
		si ConvertirANumero(be[i, 6]) >= 10 Y ConvertirANumero(be[i, 6]) < 15 Entonces
			promedio = promedio - 0.5
		SiNo
			si ConvertirANumero(be[i, 6]) >= 15
				promedio = promedio - 1
			FinSi
		FinSi
		Escribir "El promedio de: ",be[i,1]," es: ",promedio
		Escribir "******************************************"
	FinPara
FinFuncion









Algoritmo calcular_notas
	terminado = Falso
	cantEstudiante = 1
	Dimensionar estudiantes[cantEstudiante, 6]
	Repetir
		opc = menu
		Segun opc Hacer
			1:
				Escribir "Nombre estudiante: "
				Leer nombre
				Escribir "Codigo estudiante: "
				leer codigo
				Escribir "Nota parcial 1:"
				Leer nota1
				Escribir "Nota parcial 2:"
				leer nota2
				Escribir "Nota parcial 3:"
				leer nota3
				Escribir "Inasistencias: "
				leer intas
				cantEstudiante = ingresarEstudiantes(estudiantes,cantEstudiante, nombre, codigo, nota1, nota2, nota3, intas)
				Redimensionar estudiantes[cantEstudiante, 6]
			2: 
				mostrarLista(estudiantes,cantEstudiante)
				
			3:
				calcularNotas(estudiantes, cantEstudiante)
			4:
				terminado = Verdadero
				Escribir "Programa Terminado...."
		De Otro Modo:
				Escribir "Elija una opcion correcta..."
		Fin Segun
	Hasta Que terminado
	
	
	
FinAlgoritmo
