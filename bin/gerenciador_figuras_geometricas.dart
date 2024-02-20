import 'Circulo.dart';
import 'Figura.dart';
import 'Retangulo.dart';
import 'Triangulo.dart';

void main(List<String> arguments) {
  List<Figura> figuras = [];

  Circulo circulo = Circulo(3, 4, 5);
  figuras.add(circulo);
  print('Criado Circulo');
  print('Área: ${circulo.area()}');
  print('Diâmetro: ${circulo.diametro()}');
  print('');

  Retangulo retangulo = Retangulo(1, 2, 4, 4);
  figuras.add(retangulo);
  print('Criado Retângulo');
  print('Área: ${retangulo.area()}');
  retangulo.isQuadrado();
  print('');

  Retangulo quadrado = Retangulo(9, 5, 7, 3);
  figuras.add(quadrado);
  print('Criado Retângulo');
  print('Área: ${quadrado.area()}');
  quadrado.isQuadrado();
  print('');

  Triangulo triangulo = Triangulo(5, 6, 3, 3, 3);
  figuras.add(triangulo);
  print('Criado Triângulo');
  print('Área: ${triangulo.area()}');
  triangulo.getTipo();
  print('');

  print('Área total dos objetos: ${calculaAreaTotal(figuras)}');
}

double calculaAreaTotal(List<Figura> figuras) {
  double totalArea = 0;
  for (var figura in figuras) {
    totalArea += figura.area();
  }
  return totalArea;
}
