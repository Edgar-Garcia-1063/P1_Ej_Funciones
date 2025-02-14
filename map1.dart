void main() {
  // Crear un Map<int, String> con el número del mes y su nombre
  Map<int, String> meses = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre',
  };

  // Imprimir el Map completo
  print('Meses del año: $meses');

  // Acceder al nombre de un mes específico usando su número
  int numeroMes = 5;
  String nombreMes = meses[numeroMes]!;
  print('El mes número $numeroMes es: $nombreMes');

  // Recorrer el Map e imprimir cada par clave-valor
  meses.forEach((numero, nombre) {
    print('Mes $numero: $nombre');
  });
}