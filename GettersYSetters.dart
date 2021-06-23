//GETTERS Y SETTERS
void main(){
  final cuadrado = new ClaseCuadrado(3);
  cuadrado.area = 30;
  print('LADO: ${cuadrado.lado}');
  print('ÁREA GET: ${cuadrado.area}');
}

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