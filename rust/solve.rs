use std::time::Instant;

fn burbuja(arr: &mut Vec<i32>) {
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
    // 🔹 Arreglo dado
    let mut arr = vec![64, 25, 12, 22, 11];

    println!("Arreglo original: {:?}", arr);

    // Medir el tiempo de ejecución
    let inicio = Instant::now();
    
    // Ordenar el arreglo
    burbuja(&mut arr);

    let duracion = inicio.elapsed();

    println!("\nArreglo ordenado: {:?}", arr);
    println!("\nTiempo de ejecución: {:.6} segundos", duracion.as_secs_f64());
}
