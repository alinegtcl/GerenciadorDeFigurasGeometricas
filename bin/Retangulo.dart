import 'Figura.dart';

class Retangulo extends Figura {
  double largura;
  double comprimento;

  Retangulo(int x, int y, this.largura, this.comprimento) : super(x, y);

  void isQuadrado() {
    if (largura == comprimento) {
      print('É um quadrado.');
    } else {
      print('Não é um quadrado.');
    }
  }

  @override
  double area() {
    return largura * comprimento;
  }
}
