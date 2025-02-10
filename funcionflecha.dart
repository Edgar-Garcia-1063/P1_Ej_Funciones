int multiplicacion(int a, int b) {
  return a * b;
}
int flechamultiplicacion(int a, int b) => a * b;

double division(int a, int b) {
  return a / b;
}

double flechadivision(int a, int b) => a / b;
//returnType functionName(parameters) => expression;
//funcion main
void main() {
  print("Edgar Axel Garcia Aguirre: 22308051281063");
  print("llamando a la funcion multiplicacion");
  print(multiplicacion(5, 5));
  print("llamando a la funcion flechamultiplicacion");
  print(flechamultiplicacion(5, 5));
  print("llamando a la funcion division");
  print(division(10, 3));
  print("llamando a la funcion flechadivision");
  print(flechadivision(10, 3));
}