// Función 1: Sumar dos números
int sumar(int a, int b) {
  return a + b;
}

// Función 2: Imprimir un mensaje de saludo
void saludar(String nombre, String mensaje) {
  print('$mensaje, $nombre!');
}

void main() {
  // Llamada a la función sumar con parámetros posicionales
  int resultado = sumar(3, 5);
  print('La suma es: $resultado');
  
  // Llamada a la función saludar con parámetros posicionales
  saludar('edgar', 'Hola');
}
