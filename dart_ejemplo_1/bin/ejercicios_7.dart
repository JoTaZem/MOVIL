import 'dart:io';

List<Map<String, dynamic>> gastos = [];

void registrarGasto() {
  print("\n\n\n\n   REGISTRAR GASTO");
  String categoria = validarCategoria();
  print("Ingrese el nombre del producto:");
  String producto = stdin.readLineSync()!;
  double monto = validarMonto();
  gastos.add({'categoria': categoria, 'producto': producto, 'monto': monto});
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
  List<String> categorias = [
    "comida",
    "transporte",
    "entretenimiento",
    "servicios",
  ];
  for (String categoria in categorias) {
    totalCategorias = 0;
    print("\nGastos en $categoria:");
    for (var gasto in gastos) {
      if (gasto['categoria'] == categoria) {
        totalCategorias += gasto['monto'];
        print("Producto: ${gasto['producto']}    Monto: ${gasto['monto']}");
      }
    }
    print("Total en $categoria: $totalCategorias");
    print("------------------------------------------");
  }
}

void gastosTotales() {
  double totalGastos = 0;
  for (var gasto in gastos) {
    totalGastos += gasto['monto'];
    print("Producto: ${gasto['producto']}    Monto: ${gasto['monto']}");
  }
  print("Total de gastos: $totalGastos");
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
      gastosCategorias();
      break;
    case 3:
      gastosTotales();
      break;
    case 4:
      exit(0);
    default:
      print("Opción no válida");
      menu();
  }
  print("\nPresione enter para continuar...");
  String pausa = stdin.readLineSync()!;
  print(pausa);
  menu();
}

void main(List<String> args) {
  menu();
}
