
function burbuja(arr) {
    const n = arr.length;
    for (let i = 0; i < n - 1; i++) {
        for (let j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
            }
        }
    }
}
function imprimirArreglo(arr) {
    console.log(arr.join(" "));
}
let arr = [64, 25, 12, 22, 11];

console.log("Arreglo original:");
imprimirArreglo(arr);

// Medir el tiempo de ejecución
const inicio = performance.now();
burbuja(arr);

const fin = performance.now();
console.log("\nArreglo ordenado:");
imprimirArreglo(arr);

// Mostrar el tiempo de ejecución
console.log(`\nTiempo de ejecución: ${(fin - inicio).toFixed(6)} ms`);
