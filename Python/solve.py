import time

# Función de ordenamiento por burbuja
def burbuja(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr

# Función para imprimir un arreglo
def imprimir_arreglo(arr):
    print(" ".join(map(str, arr)))

# Arreglo dado
arr = [64, 25, 12, 22, 11]

# Mostrar el arreglo original
print("Arreglo original:")
imprimir_arreglo(arr)

# Medir el tiempo de ejecución
inicio = time.time()

# Ordenar el arreglo usando el algoritmo de burbuja
burbuja(arr)

# Medir el tiempo después de la ejecución
fin = time.time()

# Mostrar el arreglo ordenado
print("\nArreglo ordenado:")
imprimir_arreglo(arr)

# Mostrar el tiempo de ejecución
print(f"\nTiempo de ejecución: {fin - inicio:.6f} segundos")
