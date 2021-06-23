//FUNCIONES
void main(){
  funcion();
  String respuestaFuncion2 = funcion2();
  print(respuestaFuncion2);
  
  String respuestaFuncion3 =
  funcion3( nombre: 'DART', texto:'HOLA,');
  print(respuestaFuncion3);
  
  String respuestaFuncion4 =
  funcion4( nombre: 'FUNCIÓN FLECHA EN DART', texto:'HOLA,');
  print(respuestaFuncion4);
}

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