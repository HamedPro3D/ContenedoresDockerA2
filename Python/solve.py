import time
def burbuja(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr
def imprimir_arreglo(arr):
    print(" ".join(map(str, arr)))
arr = [64, 25, 12, 22, 11]
print("Arreglo original:")
imprimir_arreglo(arr)
inicio = time.time()
burbuja(arr)

# Medir el tiempo después de la ejecución
fin = time.time()
# Mostrar el arreglo ordenado
print("\nArreglo ordenado:")
imprimir_arreglo(arr)

# Mostrar el tiempo de ejecución
print(f"\nTiempo de ejecución: {fin - inicio:.6f} segundos")

#