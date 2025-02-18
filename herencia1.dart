// Definición de la clase Animal
class Animal {
  // Atributos de la clase Animal
  int id; // Identificador único del animal
  String nombre; // Nombre del animal
  String raza; // Raza del animal

  // Constructor de la clase Animal
  // Permite crear objetos Animal y asignar valores a sus atributos
  Animal({required this.id, required this.nombre, required this.raza});

  // Función comer
  // Imprime un mensaje indicando que el animal está comiendo
  void comer() {
    print('$nombre está comiendo.');
  }
}

// Definición de la clase Mamifero que hereda de Animal
class Mamifero extends Animal {
  // Constructor de la clase Mamifero
  // Llama al constructor de la clase Animal (super) para inicializar los atributos heredados
  Mamifero({required int id, required String nombre, required String raza})
      : super(id: id, nombre: nombre, raza: raza);

  // Función correr
  // Imprime un mensaje indicando que el mamífero está corriendo
  void correr() {
    print('$nombre está corriendo.');
  }

  // Función dormir
  // Imprime un mensaje indicando que el mamífero está durmiendo
  void dormir() {
    print('$nombre está durmiendo.');
  }
}

// Función principal (main)
void main() {
  // Creación de un objeto Mamifero llamado miPerro
  Mamifero miPerro = Mamifero(id: 1, nombre: 'emoliano', raza: 'Pastor Alemán');
print("Edgar Axel Garcia Aguirre: 22308051281063");
  // Llamada a la función comer del objeto miPerro
  miPerro.comer(); // Imprime: Firulais está comiendo.

  // Llamada a la función correr del objeto miPerro
  miPerro.correr(); // Imprime: Firulais está corriendo.

  // Llamada a la función dormir del objeto miPerro
  miPerro.dormir(); // Imprime: Firulais está durmiendo.
}