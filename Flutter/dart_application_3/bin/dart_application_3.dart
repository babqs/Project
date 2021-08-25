import 'dart:io';

// Ler	 3	 valores	 inteiros	 e	escrevê-los	em	ordem	crescente
void main(List<String> arguments) {
  var num1 = stdin.readLineSync();
  int a = int.parse(num1!);

  var num2 = stdin.readLineSync();
  int b = int.parse(num2!);

  var num3 = stdin.readLineSync();
  int c = int.parse(num3!);

  int aux = 0;

  if (a > b) {
    if (b > c) {
      aux = a;
      a = c;
      c = aux;
    } else {
      if (c > b) {
        aux = a;
        a = b;
        b = c;
        c = aux;
      }
    }
  }
  if (b > c) {
    if (a > c) {
      aux = a;
      a = c;
      c = b;
      b = aux;
    } else {
      if (c > a) {
        aux = b;
        b = c;
        c = aux;
      }
    }
  }
  if (c > a) {
    if (a > b) {
      aux = a;
      a = b;
      b = aux;
    }
  }

  print('Ordenado: ${a}, ${b}, ${c}');
}
