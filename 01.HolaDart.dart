import 'dart:math' as math;

void main(){
  print('Hola Dart'); //Comentario
  var nombre = 'JUAN'; 
  /* Otra forma de comentar */
  print('Hola $nombre');
  String nombre2 = 'PEDRO';
  print('Chao $nombre2');

  //NÚMEROS
  int numero = 7;
  double pi = 3.14;
  print('$numero | $pi');
  
  //CADENAS
  String nombre = 'DIEGO';
  print(nombre[0]); //Obtiene primer caracter.
  print(nombre[nombre.length - 1]); //Obtiene el último caracter.
  
  //BOOLEANOS
  bool variableBooleana = true;
  print(variableBooleana);
  variableBooleana = !variableBooleana;
  
  if(variableBooleana){
    print('FUNCIONA');
  }else{
    print('NO FUNCIONA');
  }

   //LISTAS
  List<int> lista = [1,2,3,4,5];
  print(lista); 
  lista.add(6);
  print(lista);
  List lista2 = List.filled(5, 10);
  print(lista2);
  lista2[0] = 6;
  print(lista2);

  //MAP
  String estado = 'soltero';
  Map<String, dynamic> miMap = {
    'nombre'  : 'JUAN',
    'edad'    : 33,
    'soltero' : true
  };
  print(miMap['nombre']);
  print(miMap['edad']);
  print(miMap[estado]);
  
  Map<int, String> miMap2 = {
    1: 'PEDRO',
    2: 'JUAN',
    9: 'DIEGO'
  };
  print(miMap2);
  miMap2.addAll({4:'ANA'}); //Agregar 
  print(miMap2);
  print(miMap2[2]); //Mostrar

  //FUNCIONES
  funcion();
  String respuestaFuncion2 = funcion2();
  print(respuestaFuncion2);
  
  String respuestaFuncion3 =
  funcion3( nombre: 'DART', texto:'HOLA,');
  print(respuestaFuncion3);
  
  String respuestaFuncion4 =
  funcion4( nombre: 'FUNCIÓN FLECHA EN DART', texto:'HOLA,');
  print(respuestaFuncion4);

  //CLASES
  final persona1 = new ClasePersona();
  persona1.nombre = 'JUAN';
  persona1.apellido = 'PÉREZ';
  persona1.edad = 30;
  print(persona1);
  
  final persona2 = new ClasePersona2(nombre:'DIEGO', apellido:'SOTO', edad:25);
  print(persona2);

  //CONSTRUCTOR CON NOMBRE
  final miJSON = {
    'nombre': 'TIMO',
    'apellido': 'KOTIPELTO',
    'edad': 51
  };
  
  final persona3 = ClasePersona2.fromJSON(miJSON);
  print(persona3);

  //GETTERS Y SETTERS
  final cuadrado = new ClaseCuadrado(3);
  cuadrado.area = 30;
  print('LADO: ${cuadrado.lado}');
  print('ÁREA GET: ${cuadrado.area}');
 
}

//GETTERS Y SETTERS
class ClaseCuadrado{
  double lado;

  ClaseCuadrado(double side):
    this.lado = side;
  
  double get area{
    return this.lado * this.lado;
  }
  
  set area(double side){
    this.lado = math.sqrt(side);
  }     
}

//CLASES
class ClasePersona{
  String? nombre;
  String? apellido;
  int? edad;
  
  @override
  String toString(){
    return 'NOMBRE: ${this.nombre}, APELLIDO: ${this.apellido}, EDAD: ${this.edad}';
  }
}

class ClasePersona2{
  String nombre;
  String apellido;
  int edad;
  
  ClasePersona2({
    required this.nombre,
    required this.apellido,
    required this.edad
 
  });

  //CONSTRUCTOR CON NOMBRE
  ClasePersona.fromJSON(Map<String, dynamic> JSON):
    this.nombre = JSON['nombre'] ?? 'SIN NOMBRE',
    this.apellido = JSON['apellido'] ?? 'SIN APELLIDO',
    this.edad = JSON['edad'] ?? 0;
  
  @override
  String toString(){
    return 'NOMBRE: ${this.nombre}, APELLIDO: ${this.apellido}, EDAD: ${this.edad}';
  }
}

//FUNCIONES
void funcion(){
  print('ESTA ES UNA FUNCIÓN');
}

String funcion2(){
  return 'ESTA ES UNA FUNCIÓN CON RETORNO';
}

String funcion3({required String texto, required String nombre}){
  return '$texto $nombre';
}

String funcion4({required String texto, required String nombre}) => '$texto $nombre';
}