use std::time::Instant;
use std::fs::OpenOptions;
use std::io::Write;

fn bubble_sort(arr: &mut Vec<i32>) {
    let n = arr.len();
    for i in 0..n {
        for j in 0..(n - i - 1) {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}

fn main() {
    let mut numbers = vec![64, 34, 25, 12, 22, 11, 90, 88, 76, 45, 32, 19, 5, 98, 67];

    let start = Instant::now();
    bubble_sort(&mut numbers);
    let duration = start.elapsed();

    println!("{}", duration.as_millis()); // Imprimir el tiempo en milisegundos

    // 🔹 CORREGIDO: Usar una ruta ABSOLUTA dentro del contenedor
    let path = "/usr/src/benchmark_rust/output.txt";
    

    let mut file = OpenOptions::new()
        .create(true)   // Crear el archivo si no existe
        .write(true)    // Habilitar escritura
        .truncate(true) // Sobrescribir si ya existe
        .open(path)
        .expect("Error abriendo el archivo");

    writeln!(file, "{:?}", numbers).expect("Error escribiendo en output.txt");

    println!("✅ Archivo output.txt generado correctamente en {}.", path);
}
