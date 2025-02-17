package main

import (
	"fmt"
	"time"
)

// Función de ordenamiento por burbuja
func burbuja(arr []int) {
	n := len(arr)
	for i := 0; i < n; i++ {
		for j := 0; j < n-i-1; j++ {
			if arr[j] > arr[j+1] {
				arr[j], arr[j+1] = arr[j+1], arr[j]
			}
		}
	}
}

func main() {
	// Arreglo dado
	arr := []int{64, 25, 12, 22, 11}

	// Mostrar el arreglo original
	fmt.Println("Arreglo original:", arr)

	// Medir el tiempo de ejecución
	inicio := time.Now()

	// Ordenar el arreglo usando burbuja
	burbuja(arr)

	// Medir el tiempo después de la ejecución
	duracion := time.Since(inicio)

	// Mostrar el arreglo ordenado
	fmt.Println("Arreglo ordenado:", arr)

	// Mostrar el tiempo de ejecución
	fmt.Printf("Tiempo de ejecución: %v segundos\n", duracion.Seconds())
}
