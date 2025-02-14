void main() {
  // Mapa de productos: ID -> Producto (nombre, marca, modelo, talla, id_proveedor, precio)
  Map<int, Map<String, dynamic>> productos = {
    1: {
      'nombre': 'Tenis Nike Air Max',
      'marca': 'Nike',
      'modelo': 'Air Max 2021',
      'talla': '10',
      'id_proveedor': 101,
      'precio': 120.50
    },
    2: {
      'nombre': 'Adidas Ultraboost',
      'marca': 'Adidas',
      'modelo': 'Ultraboost 22',
      'talla': '9',
      'id_proveedor': 102,
      'precio': 150.00
    },
    3: {
      'nombre': 'Puma Suede Classic',
      'marca': 'Puma',
      'modelo': 'Suede Classic 2021',
      'talla': '11',
      'id_proveedor': 103,
      'precio': 80.75
    },
    4: {
      'nombre': 'Reebok Classic Leather',
      'marca': 'Reebok',
      'modelo': 'Classic Leather 2020',
      'talla': '10',
      'id_proveedor': 104,
      'precio': 90.00
    },
  };

  // Mapa de clientes: ID -> Cliente (nombre, apellido, direccion, telefono)
  Map<int, Map<String, String>> clientes = {
    1: {
      'nombre': 'Juan',
      'apellido': 'Pérez',
      'direccion': 'Calle del nava 123',
      'telefono': '123-456-7890',
    },
    2: {
      'nombre': 'Ana',
      'apellido': 'García',
      'direccion': 'Avenida Edgar G 456',
      'telefono': '987-654-3210',
    },
    3: {
      'nombre': 'Luis',
      'apellido': 'Rodríguez',
      'direccion': 'Calle emoliano 789',
      'telefono': '555-123-4567',
    },
  };

  // Mapa de órdenes: ID de orden -> Detalles de la orden (id_cliente, fecha, total, metodo_pago)
  Map<int, Map<String, dynamic>> ordenes = {
    1001: {
      'id_cliente': 1,
      'fecha': '2025-02-14',
      'total': 391.00, // Total de la orden
      'metodo_pago': 'Tarjeta de crédito'
    },
    1002: {
      'id_cliente': 2,
      'fecha': '2025-02-15',
      'total': 181.50, // Total de la orden
      'metodo_pago': 'PayPal'
    },
  };

  // Imprimir productos
  print('Productos disponibles:');
  productos.forEach((id, producto) {
    print('ID: $id, ${producto['nombre']} (${producto['marca']} - ${producto['modelo']}), Talla: ${producto['talla']}, Precio: \$${producto['precio']}');
  });

  // Imprimir clientes
  print('\nClientes registrados:');
  clientes.forEach((id, cliente) {
    print('$id: ${cliente['nombre']} ${cliente['apellido']}, Dirección: ${cliente['direccion']}, Teléfono: ${cliente['telefono']}');
  });

  // Imprimir órdenes
  print('\nÓrdenes realizadas:');
  ordenes.forEach((idOrden, orden) {
    int idCliente = orden['id_cliente'];
    String clienteNombre = '${clientes[idCliente]!['nombre']} ${clientes[idCliente]!['apellido']}';
    print('\nOrden $idOrden - Cliente: $clienteNombre, Fecha: ${orden['fecha']}, Total: \$${orden['total']}, Método de pago: ${orden['metodo_pago']}');
  });
}
