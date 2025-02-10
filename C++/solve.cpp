#include <iostream>
#include <vector>
#include <chrono> // Para medir el tiempo de ejecución

// Función que implementa el algoritmo de ordenación Burbuja
void burbuja(std::vector<int>& matriz) {
    int n = matriz.size();
    for (int i = 0; i < n - 1; ++i) {
        // Si no hubo intercambio, el arreglo ya está ordenado
        bool intercambiado = false;
        
        for (int j = 0; j < n - i - 1; ++j) {
            if (matriz[j] > matriz[j + 1]) {
                // Intercambiamos los elementos
                std::swap(matriz[j], matriz[j + 1]);
                intercambiado = true;
            }
        }

        // Si no hubo intercambio, el arreglo ya está ordenado
        if (!intercambiado) {
            break;
        }
    }
}

// Función para imprimir la matriz
void imprimirMatriz(const std::vector<int>& matriz) {
    for (int i = 0; i < matriz.size(); ++i) {
        std::cout << matriz[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    // Creamos una matriz desordenada
    std::vector<int> matriz = {64, 25, 12, 22, 11};

    std::cout << "Matriz original: ";
    imprimirMatriz(matriz);

    // Iniciamos el cronómetro
    auto inicio = std::chrono::high_resolution_clock::now();

    // Llamamos a la función de ordenación
    burbuja(matriz);

    // Detenemos el cronómetro
    auto fin = std::chrono::high_resolution_clock::now();

    std::cout << "Matriz ordenada: ";
    imprimirMatriz(matriz);

    // Calculamos y mostramos el tiempo de ejecución
    std::chrono::duration<double> tiempo = fin - inicio;
    std::cout << "Tiempo de ejecución: " << tiempo.count() << " segundos." << std::endl;

    return 0;
}
