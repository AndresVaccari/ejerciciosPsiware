import os
import json

JSON_DIC = os.path.join(os.path.dirname(os.path.realpath(__file__)), "ejercicio2.json")


def abrirJson(json_dic):
    with open(json_dic, "r") as f:
        datos = json.load(f)
    return datos


def getMayorJson(datos):
    mayor = datos[list(datos.keys())[0]][0]
    keyMayor = list(datos.keys())[0]
    for key in datos.keys():
        for numeros in datos[key]:
            if numeros > mayor:
                mayor = numeros
                keyMayor = key
    return [keyMayor, mayor]


def ordernarElementosJson(datos):
    for key in datos.keys():
        datos[key] = sorted(datos[key])
    return datos


def ordenarKeysSegunPeso(datos):
    nuevoJson = {}
    keys = list(datos.keys())
    keys.sort(key=lambda x: sum(datos[x]))
    for key in keys:
        nuevoJson[key] = datos[key]
    return nuevoJson


def crearKeyValoresPares(datos):
    nuevoJson = datos.copy()
    numerosPares = []
    for key in datos.keys():
        for numero in datos[key]:
            if numero % 2 == 0 and numero not in numerosPares:
                numerosPares.append(numero)
    nuevoJson["pares"] = numerosPares
    return nuevoJson


if __name__ == "__main__":
    datos = abrirJson(JSON_DIC)

    # 2.a Determinar el numero mayor y en que key se encuentra
    numeroMayor = getMayorJson(datos)
    print(f"El numero mayor es {numeroMayor[1]} y esta en la key {numeroMayor[0]}")

    # 2.b Ordenar los elementos de cada key
    elementosOrdenados = ordernarElementosJson(datos)
    print(f"Los elementos ordenados son: {elementosOrdenados}")

    # 2.c Ordenar las keys segun el peso de los elementos
    keysOrdenadas = ordenarKeysSegunPeso(datos)
    print(f"Las keys ordenadas segun su peso de menor a mayor son: {keysOrdenadas}")

    # 2.d Crear una key con los numeros pares
    jsonPares = crearKeyValoresPares(datos)
    print(f"El nuevo json con los numeros pares es: {jsonPares}")
