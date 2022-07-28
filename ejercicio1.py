NUMEROS = [1, 10, 6, 8, 15, 2]


def getMayor(lista):
    mayor = lista[0]
    posicion = 0
    for numero in lista:
        if numero > mayor:
            mayor = numero
    posicion = lista.index(mayor)
    return [mayor, posicion]


def getPares(lista):
    pares = [numero for numero in lista if numero % 2 == 0]
    return pares


if __name__ == "__main__":
    # 1.1.a Obtener el mayor de la lista utilizando la función getMayor
    numeroMayor = getMayor(NUMEROS)
    print(f"El numero mayor es {numeroMayor[0]} y esta en la posicion {numeroMayor[1]}")

    # 1.1.b Obtener el mayor utilizando la funcion max
    print(f"El numero mayor es {max(NUMEROS)} y esta en la posicion {NUMEROS.index(max(NUMEROS))}")

    # 1.2 Ordernar la lista
    numerosOrdenados = sorted(NUMEROS)
    print(f"La lista ordenada es {numerosOrdenados}")

    # 1.2.a Obtener cuales son los numeros pares y en que posiciones se encuentran
    pares = getPares(numerosOrdenados)
    print("Los numeros pares son y se encuentran en la posicion:")
    for numero in pares:
        print(f"{numero} en la posicion {numerosOrdenados.index(numero)}")

    # 1.2.b Crear un arreglo con los numeros pares
    ## La lista ya la cree en el punto anterior
    print(f"Los numeros pares son: {pares}")
