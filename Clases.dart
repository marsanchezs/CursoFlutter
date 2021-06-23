//CLASES
void main(){
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

}

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