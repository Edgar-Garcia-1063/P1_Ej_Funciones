void main(){
  //Edgar Axel Garcia Aguirre
  print("Edgar Axel Garcia Aguirre");
  List<int> numeros = [1,2,3,4,5];
  print(numeros);
  print(numeros[0]);
  //listar los elementos de la lista con ciclo for
  for(int i = 0; i < numeros.length; i++){
    print(numeros[i]);
  }
  // tipo double con 5 elementos de estaturas
  List<double> estaturas = [1.70, 1.80, 1.60, 1.90, 1.75];
  //lista de 5 nombres de personas
  List<String> nombres = ["Juan", "Maria", "Pedro", "Jose", "Luis"];
  //imprimir la lista de nombres y estaturas
  for(int i = 0; i < nombres.length; i++){
    print("Nombre: ${nombres[i]} - Estatura: ${estaturas[i]}");
  }
}



