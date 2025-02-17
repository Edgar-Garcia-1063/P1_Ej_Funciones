class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Funciones (métodos)
  void saludar() {
    
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  void cumplirAnios() {
    edad++;
    print('¡Feliz cumpleaños! Ahora tengo $edad años.');
  }
}


void main() {
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Juan', 25);

  // Acceder a los atributos
    print("Edgar Axel Garcia Aguirre: 22308051281063");
  print('Nombre: ${persona1.nombre}'); // Salida: Nombre: Juan
  print('Edad: ${persona1.edad}');     // Salida: Edad: 25

  // Llamar a las funciones
  persona1.saludar(); // Salida: Hola, mi nombre es Juan y tengo 25 años.
  persona1.cumplirAnios(); // Salida: ¡Feliz cumpleaños! Ahora tengo 26 años.
}