import 'dart:io';

List<String> capturarListaString() {
  // Captura los datos de la lista de cadenas
  print("¿Cuántas cadenas quieres ingresar?");
  int n = int.parse(stdin.readLineSync()!);
  List<String> lista = [];
  for (int i = 0; i < n; i++) {
    print("Ingresa una cadena de texto:");
    lista.add(stdin.readLineSync()!);
  }
  return lista;
}

int contarPalabras(List<String> lista) {
  // Cuenta las palabras en todas las cadenas de la lista
  int totalPalabras = 0;
  for (var cadena in lista) {
    totalPalabras += cadena.split(' ').length;  // .split() separa por espacios y cuenta las palabras
  }
  return totalPalabras;
}

void main() {
  List<String> listaString = capturarListaString();
  int resultadoPalabras = contarPalabras(listaString);
  print("El número total de palabras en todas las cadenas es: $resultadoPalabras");
}
