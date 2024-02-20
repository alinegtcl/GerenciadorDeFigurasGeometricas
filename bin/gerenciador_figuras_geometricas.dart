import 'Circulo.dart';
import 'Figura.dart';
import 'Retangulo.dart';
import 'Triangulo.dart';

void main(List<String> arguments) {
  List<Figura> figuras = [];

  Circulo circulo = Circulo(3, 4, 5);
  figuras.add(circulo);
  print('Criado Circulo em X=${circulo.x} Y=${circulo.y}');
  print('Área: ${circulo.area()}');
  print('Diâmetro: ${circulo.diametro()}');
  print('');

  Retangulo retangulo = Retangulo(1, 2, 4, 4);
  figuras.add(retangulo);
  print('Criado Retângulo em X=${retangulo.x} Y=${retangulo.y}');
  print('Área: ${retangulo.area()}');
  retangulo.isQuadrado();
  print('');

  Retangulo retangulo2 = Retangulo(9, 5, 7, 3);
  figuras.add(retangulo2);
  print('Criado Retângulo em X=${retangulo2.x} Y=${retangulo2.y}');
  print('Área: ${retangulo2.area()}');
  retangulo2.isQuadrado();
  print('');

  Triangulo triangulo = Triangulo(5, 6, 3, 3, 3);
  figuras.add(triangulo);
  print('Criado Triângulo em X=${triangulo.x} Y=${triangulo.y} ');
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
