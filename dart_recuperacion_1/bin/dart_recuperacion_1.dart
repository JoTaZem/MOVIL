import 'dart:io';

//14. Conversor de temperatura
void main(List<String> args) {
  convertirEnCelsius();
  convertirEnFahreinheit();
}

void convertirEnFahreinheit() {
  print("ingrese la temperatura en Celsius:");
  int celsius = int.parse(stdin.readLineSync()!);
  double fahreinheit = (celsius * 9 / 5) + 32;
  print("$celsius °C son ${fahreinheit.toStringAsFixed(2)} °F");
}

void convertirEnCelsius() {
  print("ingrese la temperatura en Fahreinheit:");
  int fahreinheit = int.parse(stdin.readLineSync()!);
  double celsius = (fahreinheit - 32) * 5 / 9;
  print("$fahreinheit °F son ${celsius.toStringAsFixed(2)} °C");
}
