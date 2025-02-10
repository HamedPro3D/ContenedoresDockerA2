
RESULT_FILE="resultados.txt"
echo "Resultados de ejecución:" > $RESULT_FILE


ejecutar() {
    local lang=$1
    local cmd=$2
    local output

    echo "Ejecutando $lang..."
    output=$( (time -p $cmd) 2>&1 | grep real | awk '{print $2}')
    
    if [ -z "$output" ]; then
        echo "$lang: ERROR" >> $RESULT_FILE
    else
        echo "$lang: $output segundos" >> $RESULT_FILE
    fi
}


ejecutar "Python" "python3 solve.py"
ejecutar "Javascript" "node solve.js"
ejecutar "Go" "go run solve.go"
ejecutar "Rust" "rustc solve.rs -o solve_rs && ./solve_rs"
ejecutar "Java" "javac solve.java && java solve"
ejecutar "C++" "g++ solve.cpp -o solve_cpp && ./solve_cpp"


cat $RESULT_FILE
