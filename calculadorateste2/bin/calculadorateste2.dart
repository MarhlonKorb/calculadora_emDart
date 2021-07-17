import 'dart:io';

void main() {
  double result;
  var selecione;

  somar(double num1, double num2) {
    return num1 + num2;
  }

  subtrair(double num1, double num2) {
    return num1 - num2;
  }

  multiplicar(double num1, double num2) {
    return num1 * num2;
  }

  dividir(double num1, double num2) {
    return num1 / num2;
  }

  do {
    print('');
    print('----Calculadora em Dart----');
    print('');
    print('Selecione a função:');
    print('');
    print('Somar : 1');
    print('Subtrair : 2');
    print('Multiplicar : 3');
    print('Dividir : 4');
    print('');
    print('SAIR : 0');
    selecione = int.parse(stdin.readLineSync()!);

    if (selecione < 0 || selecione > 4) {
      print('OPÇÃO INVÁLIDA');
    } else if (selecione != 0) {
      print('Digite o primeiro número:');
      double num1 = double.parse(stdin.readLineSync()!);
      print('Digite o segundo número:');
      double num2 = double.parse(stdin.readLineSync()!);

      switch (selecione) {
        case 1:
          double result = somar(num1, num2);
          print('O resultado da soma é: $result ');
          break;

        case 2:
          double result = subtrair(num1, num2);
          print('O resultado da subtração é: $result ');
          break;

        case 3:
          double result = multiplicar(num1, num2);
          print('O resultado da multiplicação é: $result ');
          break;

        case 4:
          double result = dividir(num1, num2);
          print('O resultado da divisão é: $result ');
          break;
      }
    }
  } while (selecione != 0);
  {
    print('-----OPERAÇÃO FINALIZADA-----');
  }
}
