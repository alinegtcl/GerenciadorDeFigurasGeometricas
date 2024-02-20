import 'Figura.dart';
import 'dart:math';

class Triangulo extends Figura {
  double face1;
  double face2;
  double face3;

  Triangulo(int x, int y, this.face1, this.face2, this.face3) : super(x, y);

  void getTipo() {
    if (face1 == face2 && face2 == face3) {
      print('Triângulo Equilátero');
    } else if (face1 == face2 || face1 == face3 || face2 == face3) {
      print('Triângulo Isósceles');
    } else {
      print('Triângulo Escaleno');
    }
  }

  @override
  double area() {
    // Utilizando a fórmula de Heron para calcular a área de um triângulo a partir dos lados
    double s = (face1 + face2 + face3) / 2;
    return sqrt(s * (s - face1) * (s - face2) * (s - face3));
  }
}
