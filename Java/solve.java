public class Solve {
    
    // Método para ordenar un arreglo usando el algoritmo de burbuja
    public static void ordenarArreglo(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - 1 - i; j++) {
                if (arr[j] > arr[j + 1]) {
                    // Intercambia los elementos
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    // Método para imprimir un arreglo
    public static void imprimirArreglo(int[] arr) {
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        // Arreglo dado
        int[] arr = {64, 25, 12, 22, 11};

        // Mide el tiempo de ejecución
        long inicio = System.nanoTime();

        // Imprime el arreglo original
        System.out.println("Arreglo original:");
        imprimirArreglo(arr);

        // Ordena el arreglo
        ordenarArreglo(arr);

        // Mide el tiempo de ejecución después de la ordenación
        long fin = System.nanoTime();

        // Imprime el arreglo ordenado
        System.out.println("\nArreglo ordenado:");
        imprimirArreglo(arr);

        // Calcula y muestra el tiempo de ejecución
        long tiempoEjecucion = fin - inicio;
        System.out.println("\nTiempo de ejecución: " + tiempoEjecucion + " nanosegundos");
    }
}
