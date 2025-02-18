import 'dart:io';

class Producto {
  int idProducto;
  String nombre;
  String marca;
  String modelo;
  String talla;
  int idProveedor;
  double precio;

  Producto({
    required this.idProducto,
    required this.nombre,
    required this.marca,
    required this.modelo,
    required this.talla,
    required this.idProveedor,
    required this.precio,
  });

  void capturaDatosProducto() {
    print('Ingrese el ID del producto:');
    idProducto = int.parse(stdin.readLineSync()!);

    print('Ingrese el nombre del producto:');
    nombre = stdin.readLineSync()!;

    print('Ingrese la marca del producto:');
    marca = stdin.readLineSync()!;

    print('Ingrese el modelo del producto:');
    modelo = stdin.readLineSync()!;

    print('Ingrese la talla del producto:');
    talla = stdin.readLineSync()!;

    print('Ingrese el ID del proveedor:');
    idProveedor = int.parse(stdin.readLineSync()!);

    print('Ingrese el precio del producto:');
    precio = double.parse(stdin.readLineSync()!);
  }
}

class Inventario extends Producto {
  int idInventario;
  String estado;
  bool disponible;
  int idSucursal;

  Inventario({
    required int idProducto,
    required String nombre,
    required String marca,
    required String modelo,
    required String talla,
    required int idProveedor,
    required double precio,
    required this.idInventario,
    required this.estado,
    required this.disponible,
    required this.idSucursal,
  }) : super(
          idProducto: idProducto,
          nombre: nombre,
          marca: marca,
          modelo: modelo,
          talla: talla,
          idProveedor: idProveedor,
          precio: precio,
        );

  void capturaDatosInventario() {
    print('Ingrese el ID del inventario:');
    idInventario = int.parse(stdin.readLineSync()!);

    print('Ingrese el estado del producto:');
    estado = stdin.readLineSync()!;

    String disponibleStr;
    do {
      print('¿Está disponible el producto? (sí/no):');
      disponibleStr = stdin.readLineSync()!.toLowerCase();
      if (disponibleStr != 'sí' && disponibleStr != 'no') {
        print('Respuesta inválida. Por favor, ingrese "sí" o "no".');
      }
    } while (disponibleStr != 'sí' && disponibleStr != 'no');

    disponible = disponibleStr == 'sí';

    print('Ingrese el ID de la sucursal:');
    idSucursal = int.parse(stdin.readLineSync()!);
  }

  void mostrarDatos() {
    print('\nDatos del Producto:');
    print('ID: $idProducto');
    print('Nombre: $nombre');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Talla: $talla');
    print('ID Proveedor: $idProveedor');
    print('Precio: $precio');

    print('\nDatos del Inventario:');
    print('ID Inventario: $idInventario');
    print('Estado: $estado');
    print('Disponible: ${disponible ? 'sí' : 'no'}');
    print('ID Sucursal: $idSucursal');
  }
}

void main() {
  Inventario productoEnInventario = Inventario(
    idProducto: 0,
    nombre: '',
    marca: '',
    modelo: '',
    talla: '',
    idProveedor: 0,
    precio: 0.0,
    idInventario: 0,
    estado: '',
    disponible: false,
    idSucursal: 0,
  );

  print('Captura de datos del producto:');
  productoEnInventario.capturaDatosProducto();

  print('\nCaptura de datos del inventario:');
  productoEnInventario.capturaDatosInventario();

  productoEnInventario.mostrarDatos();
}