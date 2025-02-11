// Función para calcular el área de un rectángulo
double calcularArea(double largo, double ancho) {
  return largo * ancho;
}

// Función para calcular el perímetro de un rectángulo
double calcularPerimetro(double largo, double ancho) {
  return 2 * (largo + ancho);
}

void main() {
  double largo = 5.0;
  double ancho = 3.0;

  // Llamada a la función para calcular el área
  double area = calcularArea(largo, ancho);
  print("El área del rectángulo es: $area");

  // Llamada a la función para calcular el perímetro
  double perimetro = calcularPerimetro(largo, ancho);
  print("El perímetro del rectángulo es: $perimetro");
}

