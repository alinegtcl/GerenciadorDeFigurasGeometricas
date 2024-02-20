import 'dart:math';

import 'Figura.dart';

class Circulo extends Figura {
  double raio;

  Circulo(int x, int y, this.raio) : super(x, y);

  double diametro() {
    return raio * 2;
  }

  @override
  double area() {
    return pi * raio * raio;
  }
}
