// Función de ordenamiento por burbuja
function burbuja(arr) {
    const n = arr.length;
    for (let i = 0; i < n - 1; i++) {
        for (let j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Intercambia los elementos
                [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
            }
        }
    }
}

// Función para imprimir un arreglo
function imprimirArreglo(arr) {
    console.log(arr.join(" "));
}

// Definir el arreglo dado
let arr = [64, 25, 12, 22, 11];

console.log("Arreglo original:");
imprimirArreglo(arr);

// Medir el tiempo de ejecución
const inicio = performance.now();

// Ordenar el arreglo usando el algoritmo de burbuja
burbuja(arr);

const fin = performance.now();

// Mostrar el arreglo ordenado
console.log("\nArreglo ordenado:");
imprimirArreglo(arr);

// Mostrar el tiempo de ejecución
console.log(`\nTiempo de ejecución: ${(fin - inicio).toFixed(6)} ms`);
