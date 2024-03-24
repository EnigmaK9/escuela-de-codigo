def calcular_rectangulo(ancho,altura):
    area = ancho * altura
    perimetro = 2 * (ancho + altura)
    return area, perimetro
ancho = float(input("Ingresa el ancho del rectangulo: "))
altura = float(input("Ingresa la altura del rectangulo: "))

area, perimetro = calcular_rectangulo( ancho, altura)

print( "El area del rectangulo es:", area)
print( "El perimetro del rectangulo es: ", perimetro)

