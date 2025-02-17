import 'dart:io';

// Clase Producto
class Producto {
  int idProducto;
  String nombre;
  String marca;
  String modelo;
  String talla;
  int idProveedor;
  double precio;

  // Constructor
  Producto({
    required this.idProducto,
    required this.nombre,
    required this.marca,
    required this.modelo,
    required this.talla,
    required this.idProveedor,
    required this.precio,
  });

  // Método para imprimir información del producto
  void imprimirProducto() {
    print('ID Producto: $idProducto');
    print('Nombre: $nombre');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Talla: $talla');
    print('ID Proveedor: $idProveedor');
    print('Precio: \$${precio.toStringAsFixed(2)}');
  }
}

// Clase Cliente
class Cliente {
  int idCliente;
  String nombre;
  String apellido;
  String direccion;
  String telefono;
  int edad;

  // Constructor
  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.direccion,
    required this.telefono,
    required this.edad,
  });

  // Método para imprimir información del cliente
  void imprimirCliente() {
    print('ID Cliente: $idCliente');
    print('Nombre: $nombre');
    print('Apellido: $apellido');
    print('Dirección: $direccion');
    print('Teléfono: $telefono');
    print('Edad: $edad');
  }
}

// Clase Orden
class Orden {
  int idOrden;
  int idCliente;
  String fecha; // Cambiado de DateTime a String
  String fechaEntrega; // Cambiado de DateTime a String
  double total;
  String metodoPago;

  // Constructor
  Orden({
    required this.idOrden,
    required this.idCliente,
    required this.fecha,
    required this.fechaEntrega,
    required this.total,
    required this.metodoPago,
  });

  // Método para imprimir información de la orden
  void imprimirOrden() {
    print('ID Orden: $idOrden');
    print('ID Cliente: $idCliente');
    print('Fecha: $fecha');
    print('Fecha de Entrega: $fechaEntrega');
    print('Total: \$${total.toStringAsFixed(2)}');
    print('Método de pago: $metodoPago');
  }
}

void main() {
  // Ingresar información de producto
  print('Ingrese la información del Producto:');
  print('ID Producto:');
  int idProducto = int.parse(stdin.readLineSync()!);
  print('Nombre:');
  String nombre = stdin.readLineSync()!;
  print('Marca:');
  String marca = stdin.readLineSync()!;
  print('Modelo:');
  String modelo = stdin.readLineSync()!;
  print('Talla:');
  String talla = stdin.readLineSync()!;
  print('ID Proveedor:');
  int idProveedor = int.parse(stdin.readLineSync()!);
  print('Precio:');
  double precio = double.parse(stdin.readLineSync()!);

  // Crear un producto con los datos ingresados
  Producto producto = Producto(
    idProducto: idProducto,
    nombre: nombre,
    marca: marca,
    modelo: modelo,
    talla: talla,
    idProveedor: idProveedor,
    precio: precio,
  );

  // Ingresar información del cliente
  print('\nIngrese la información del Cliente:');
  print('ID Cliente:');
  int idCliente = int.parse(stdin.readLineSync()!);
  print('Nombre:');
  String nombreCliente = stdin.readLineSync()!;
  print('Apellido:');
  String apellido = stdin.readLineSync()!;
  print('Dirección:');
  String direccion = stdin.readLineSync()!;
  print('Teléfono:');
  String telefono = stdin.readLineSync()!;
  print('Edad:');
  int edad = int.parse(stdin.readLineSync()!);

  // Crear un cliente con los datos ingresados
  Cliente cliente = Cliente(
    idCliente: idCliente,
    nombre: nombreCliente,
    apellido: apellido,
    direccion: direccion,
    telefono: telefono,
    edad: edad,
  );

  // Ingresar información de la orden
  print('\nIngrese la información de la Orden:');
  print('ID Orden:');
  int idOrden = int.parse(stdin.readLineSync()!);
  print('Método de pago:');
  String metodoPago = stdin.readLineSync()!;
  print('Total de la orden:');
  double total = double.parse(stdin.readLineSync()!);
  print('Fecha (formato: yyyy-mm-dd):');
  String fechaStr = stdin.readLineSync()!;
  print('Fecha de Entrega (formato: yyyy-mm-dd):');
  String fechaEntregaStr = stdin.readLineSync()!;

  // Crear una orden con los datos ingresados
  Orden orden = Orden(
    idOrden: idOrden,
    idCliente: cliente.idCliente,
    fecha: fechaStr,
    fechaEntrega: fechaEntregaStr,
    total: total,
    metodoPago: metodoPago,
  );

  // Imprimir la información
  print('\nInformación del Producto:');
  producto.imprimirProducto();
  print('\nInformación del Cliente:');
  cliente.imprimirCliente();
  print('\nInformación de la Orden:');
  orden.imprimirOrden();
}
