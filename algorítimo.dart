import 'dart:io';
import 'dart:math' as math;

void main() {
  print("###################### INÍCIO ############################");

  double galao;
  int numero_de_garrafas;
  List garrafas;
  String saida = "";

  print("Quantos litros tem o galão de água?");
  galao = double.tryParse(stdin.readLineSync());

  print("Quantas garrafas são?");
  numero_de_garrafas = int.tryParse(stdin.readLineSync());
  garrafas = new List(numero_de_garrafas);

  int contador = 0;

  for (var i in garrafas) {
    print("Quantos litros tem a garrafa ${contador + 1}");
    garrafas[contador] = double.tryParse(stdin.readLineSync());
    contador++;
  }

  garrafas.sort();

  for (var garrafa in garrafas.reversed) {
    print(garrafa);
    if (galao - garrafa >= 0) {
      galao = galao - garrafa;
      saida = saida + " ${garrafa}L";
    }
  }
  print('Garrfas: ${saida}');
  print('Sobra: ${galao.toStringAsFixed(1)}L');
  print("######################### FIM ############################");
}
