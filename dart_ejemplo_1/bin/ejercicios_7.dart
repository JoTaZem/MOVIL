import 'dart:io';

List<Map<String, dynamic>> Gastos = [];

void registrarGasto() {
  print("\n\n\n\n   REGISTRAR GASTO");
  String categoria = validarCategoria();
  print("Ingrese el nombre del producto:");
  String producto = stdin.readLineSync()!;
  print("Ingrese el monto del gasto:");
  double monto = double.parse(stdin.readLineSync()!);
  Gastos.add({'categoria': categoria, 'producto': producto, 'monto': monto});
}

double validarMonto() {
  print("Ingrese el monto o precio del producto:");
  double monto = double.parse(stdin.readLineSync()!);
  if (monto > 0) {
    return monto;
  } else {
    print("Monto no válido...debe ser mayor que 0...");
    return validarMonto();
  }
}

String validarCategoria() {
  print("Seleccione categoria del gasto:");
  print("[1.comida] [2.transporte] [3.entretenimiento] [4.servicios]");
  int opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "comida";
  }
  if (opcion == 2) {
    return "transporte";
  }
  if (opcion == 3) {
    return "entretenimiento";
  }
  if (opcion == 4) {
    return "servicios";
  } else {
    print("categoria no valida");
    return validarCategoria();
  }
}

void gastosCategorias() {
  print("\n\n GASTOS POR CATEGORÍA");
  double totalCategorias;
  if()
}

void menu() {
  print("\n\n CALCULADORA DE GASTOS");
  print("1. Registrar gasto");
  print("2.gastos por categoria");
  print("3. gastos totales");
  print("4. Salir");
  print("Seleccione una opción:");
  int opcion = int.parse(stdin.readLineSync()!);
  switch (opcion) {
    case 1:
      registrarGasto();
      break;
    case 2:
      break;
    case 3:
      exit(0);
    default:
      print("Opción no válida");
      menu();
  }
}

void main(List<String> args) {}
