import 'dart:io';

///FUNCION PRINCIPAL
void main(List<String> args) {
  iterarMenu();
}

///SECCION FUNCIONES DE LOS SUBMENUS DE CADA OPCION
//funciones para el submenu de temperatura
void subMenuTemperatura() {
  //imprimir opciones de temperatura
  print("\n\n\n\n   CONVERSOR DE TEMPERATURA");
  print("1. convertir de Celsius a Fahreinheit");
  print("2. convertir de Fahreinheit a Celsius");
  print("0. volver al Menu Principal...\n Ingrese una opción valida:");
  //proceso de seleccion de opciones
  try {
    int opcion = int.parse(stdin.readLineSync()!);
    if (opcion == 0) {
      iterarMenu();
    }
    if (opcion == 1) {
      convertirEnFahreinheit();
    }
    if (opcion == 2) {
      convertirEnCelsius();
    }
    //para continuar el bucle
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    subMenuTemperatura();
  } catch (e) {
    print("Posible Error por datos erroneos: $e");
  }
}

void convertirEnFahreinheit() {
  print("\n\n\n\ningrese la temperatura en Celsius:");
  int celsius = int.parse(stdin.readLineSync()!);
  double fahreinheit = (celsius * 9 / 5) + 32;
  print("$celsius °C son ${fahreinheit.toStringAsFixed(2)} °F");
}

void convertirEnCelsius() {
  print("\n\n\n\ningrese la temperatura en Fahreinheit:");
  int fahreinheit = int.parse(stdin.readLineSync()!);
  double celsius = (fahreinheit - 32) * 5 / 9;
  print("$fahreinheit °F son ${celsius.toStringAsFixed(2)} °C");
}

//funciones para el submenu de distancia
void subMenuDistancia() {
  double metros = 0;
  double kilometros = 0;
  double millas = 0;
  double resultado = 0;
  String unidad = "";
  //imprimir opciones de distancia
  print("\n\n\n\n   CONVERSOR DE DISTANCIA");
  print("1.Metros");
  print("2. Kilometros");
  print("3. Millas");
  print("0. volver al Menu Principal...\n Ingrese una opción valida:");
  try {
    int opcion = int.parse(stdin.readLineSync()!);
    if (opcion == 0) {
      iterarMenu();
    }
    if (opcion == 1) {
      print("ingrese la distancia en metros:");
      metros = double.parse(stdin.readLineSync()!);
      unidad = opcionMetro();
      resultado = convertirMetrosEn(metros, unidad);
      if (resultado != 0) {
        print("$metros metros son ${resultado.toStringAsFixed(2)} $unidad");
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 2) {
      print("ingrese la distancia en kilometros:");
      kilometros = double.parse(stdin.readLineSync()!);
      unidad = opcionKilometro();
      double resultado = convertirKilometrosEn(kilometros, unidad);
      if (resultado != 0) {
        print(
          "$kilometros kilometros son ${resultado.toStringAsFixed(2)} $unidad",
        );
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 3) {
      print("ingrese la distancia en millas:");
      millas = double.parse(stdin.readLineSync()!);
      unidad = opcionMilla();
      double resultado = convertirMillasEn(millas, unidad);
      if (resultado != 0) {
        print("$millas millas son ${resultado.toStringAsFixed(2)} $unidad");
      } else {
        print("unidad no valida");
      }
    }
    //para continuar el bucle
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    subMenuDistancia();
  } catch (e) {
    print("Posible Error por datos erroneos: $e");
  }
}

//funciones para las opciones de unidades de distancia
String opcionMetro() {
  int opcion = 0;
  print("\n Convertir metros a: \n1.convertir a kilometro...");
  print("2.convertir a milla...");
  print("0.volver al submenu de distancia...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "kilometro";
  }
  if (opcion == 2) {
    return "milla";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionMetro();
  }
}

String opcionKilometro() {
  int opcion = 0;
  print("\n Convertir kilometros a: \n1.convertir a metro...");
  print("2.convertir a milla...");
  print("0.volver al submenu de distancia...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "metro";
  }
  if (opcion == 2) {
    return "milla";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionKilometro();
  }
}

String opcionMilla() {
  int opcion = 0;
  print("\n Convertir millas a: \n1.convertir a metro...");
  print("2.convertir a kilometro...");
  print("0.volver al submenu de distancia...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "metro";
  }
  if (opcion == 2) {
    return "kilometro";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionMilla();
  }
}

//funciones para convertir las unidades de distancia
double convertirMetrosEn(double distancia, String unidad) {
  print("\n\n\n\n convertir metros en $unidad");
  if (unidad == "kilometro") {
    return distancia / 1000;
  }
  if (unidad == "milla") {
    return distancia / 1609.34;
  } else {
    return 0;
  }
}

double convertirKilometrosEn(double distancia, String unidad) {
  if (unidad == "metro") {
    return distancia * 1000;
  }
  if (unidad == "milla") {
    return distancia / 1.60934;
  } else {
    return 0;
  }
}

double convertirMillasEn(double distancia, String unidad) {
  if (unidad == "metro") {
    return distancia * 1609.34;
  }
  if (unidad == "kilometro") {
    return distancia * 1.60934;
  } else {
    return 0;
  }
}

///funciones para el submenu de peso
void subMenuPeso() {
  double gramos, kilogramos, libras, resultado = 0;
  String unidad = "";

  print("\n\n\n\n   CONVERSOR DE ALMACENAMIENTO");
  print("1. gramos");
  print("2. kilogramos");
  print("3. libras");
  print("0. volver al Menu Principal...\n Ingrese una opción valida:");
  try {
    int opcion = int.parse(stdin.readLineSync()!);
    if (opcion == 0) {
      iterarMenu();
    }
    if (opcion == 1) {
      //funcion gramos
      print("ingrese el peso en gramos:");
      gramos = double.parse(stdin.readLineSync()!);
      unidad = opcionGramo();
      resultado = convertirGramosEn(gramos, unidad);
      if (resultado != 0) {
        print("$gramos gramos son ${resultado.toStringAsFixed(2)} $unidad");
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 2) {
      //funcion kilogramos
      print("ingrese el peso en kilogramos:");
      kilogramos = double.parse(stdin.readLineSync()!);
      unidad = opcionKilogramo();
      resultado = convertirKilogramosEn(kilogramos, unidad);
      if (resultado != 0) {
        print(
          "$kilogramos kilogramos son ${resultado.toStringAsFixed(2)} $unidad",
        );
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 3) {
      //funcion libras
      print("ingrese el peso en libras:");
      libras = double.parse(stdin.readLineSync()!);
      unidad = opcionLibra();
      resultado = convertirLibrasEn(libras, unidad);
      if (resultado != 0) {
        print("$libras libras son ${resultado.toStringAsFixed(2)} $unidad");
      } else {
        print("unidad no valida");
      }
    }
    //para continuar el bucle
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    subMenuAlmacenamiento();
  } catch (e) {
    print("Posible Error por datos erroneos: $e");
  }
}

//funciones para las opciones de unidades de peso
String opcionGramo() {
  int opcion = 0;
  print("\n Convertir gramos a: \n1.convertir a kilogramos...");
  print("2.convertir a libras...");
  print("0.volver al submenu de peso...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "kilogramo";
  }
  if (opcion == 2) {
    return "libra";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionGramo();
  }
}

String opcionKilogramo() {
  int opcion = 0;
  print("\n Convertir kilogramos a: \n1.convertir a gramos...");
  print("2.convertir a libras...");
  print("0.volver al submenu de peso...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "gramo";
  }
  if (opcion == 2) {
    return "libra";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionKilogramo();
  }
}

String opcionLibra() {
  int opcion = 0;
  print("\n Convertir libras a: \n1.convertir a gramos...");
  print("2.convertir a kilogramos...");
  print("0.volver al submenu de peso...\n Ingrese una opción valida:");
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "gramo";
  }
  if (opcion == 2) {
    return "kilogramo";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionLibra();
  }
}

//funciones para convertir las unidades de peso
double convertirGramosEn(double peso, String unidad) {
  print("\n\n\n\n convertir gramos en $unidad");
  if (unidad == "kilogramo") {
    return peso / 1000;
  }
  if (unidad == "libra") {
    return peso / 453.592;
  } else {
    return 0;
  }
}

double convertirKilogramosEn(double peso, String unidad) {
  if (unidad == "gramo") {
    return peso * 1000;
  }
  if (unidad == "libra") {
    return peso * 2.20462;
  } else {
    return 0;
  }
}

double convertirLibrasEn(double peso, String unidad) {
  if (unidad == "gramo") {
    return peso * 453.592;
  }
  if (unidad == "kilogramo") {
    return peso / 2.20462;
  } else {
    return 0;
  }
}

//funciones para el submenu de almacenamiento
void subMenuAlmacenamiento() {
  double bytes, kilobytes, megabytes, gigabytes, resultado = 0;
  String unidad = "";

  print("\n\n\n\n   CONVERSOR DE ALMACENAMIENTO");
  print("1. bytes");
  print("2. kilobytes");
  print("3. megabytes");
  print("4. gigabytes");
  print("0. volver al Menu Principal...\n Ingrese una opción valida:");
  try {
    int opcion = int.parse(stdin.readLineSync()!);
    if (opcion == 0) {
      iterarMenu();
    }
    if (opcion == 1) {
      //funcion bytes
      print("ingrese el almacenamiento en bytes:");
      bytes = double.parse(stdin.readLineSync()!);
      unidad = opcionByte();
      resultado = convertirBytesEn(bytes, unidad);
      if (resultado != 0) {
        print("$bytes bytes son ${resultado.toStringAsFixed(2)} $unidad");
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 2) {
      //funcion kilobytes
      print("ingrese el almacenamiento en kilobytes:");
      kilobytes = double.parse(stdin.readLineSync()!);
      unidad = opcionKilobyte();
      resultado = convertirKilobytesEn(kilobytes, unidad);
      if (resultado != 0) {
        print(
          "$kilobytes kilobytes son ${resultado.toStringAsFixed(2)} $unidad",
        );
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 3) {
      //funcion megabytes
      print("ingrese el almacenamiento en megabytes:");
      megabytes = double.parse(stdin.readLineSync()!);
      unidad = opcionMegabyte();
      resultado = convertirMegabytesEn(megabytes, unidad);
      if (resultado != 0) {
        print(
          "$megabytes megabytes son ${resultado.toStringAsFixed(2)} $unidad",
        );
      } else {
        print("unidad no valida");
      }
    }
    if (opcion == 4) {
      //funcion gigabytes
      print("ingrese el almacenamiento en gigabytes:");
      gigabytes = double.parse(stdin.readLineSync()!);
      unidad = opcionGigabyte();
      resultado = convertirGigabytesEn(gigabytes, unidad);
      if (resultado != 0) {
        print(
          "$gigabytes gigabytes son ${resultado.toStringAsFixed(2)} $unidad",
        );
      } else {
        print("unidad no valida");
      }
    }
    //para continuar el bucle
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    subMenuAlmacenamiento();
  } catch (e) {
    print("Posible Error por datos erroneos: $e");
  }
}

//funciones para las opciones de unidades de almacenamiento
String opcionByte() {
  int opcion = 0;
  print("\n Convertir bytes a: \n1.convertir a kilobytes...");
  print("2.convertir a megabytes...");
  print("3.convertir a gigabytes...");
  print(
    "0.volver al submenu de almacenamiento...\n Ingrese una opción valida:",
  );
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "kilobyte";
  }
  if (opcion == 2) {
    return "megabyte";
  }
  if (opcion == 3) {
    return "gigabyte";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionByte();
  }
}

String opcionKilobyte() {
  int opcion = 0;
  print("\n Convertir kilobytes a: \n1.convertir a bytes...");
  print("2.convertir a megabytes...");
  print("3.convertir a gigabytes...");
  print(
    "0.volver al submenu de almacenamiento...\n Ingrese una opción valida:",
  );
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "byte";
  }
  if (opcion == 2) {
    return "megabyte";
  }
  if (opcion == 3) {
    return "gigabyte";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionKilobyte();
  }
}

String opcionMegabyte() {
  int opcion = 0;
  print("\n Convertir megabytes a: \n1.convertir a bytes...");
  print("2.convertir a kilobytes...");
  print("3.convertir a gigabytes...");
  print(
    "0.volver al submenu de almacenamiento...\n Ingrese una opción valida:",
  );
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "byte";
  }
  if (opcion == 2) {
    return "kilobyte";
  }
  if (opcion == 3) {
    return "gigabyte";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionMegabyte();
  }
}

String opcionGigabyte() {
  int opcion = 0;
  print("\n Convertir gigabytes a: \n1.convertir a bytes...");
  print("2.convertir a kilobytes...");
  print("3.convertir a megabytes...");
  print(
    "0.volver al submenu de almacenamiento...\n Ingrese una opción valida:",
  );
  opcion = int.parse(stdin.readLineSync()!);
  if (opcion == 1) {
    return "byte";
  }
  if (opcion == 2) {
    return "kilobyte";
  }
  if (opcion == 3) {
    return "megabyte";
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    return opcionGigabyte();
  }
}

//funciones para convertir las unidades de almacenamiento
double convertirBytesEn(double almacenamiento, String unidad) {
  print("\n\n\n\n convertir bytes en $unidad");
  if (unidad == "kilobyte") {
    return almacenamiento / 1024;
  }
  if (unidad == "megabyte") {
    return almacenamiento / (1024 * 1024);
  }
  if (unidad == "gigabyte") {
    return almacenamiento / (1024 * 1024 * 1024);
  } else {
    return 0;
  }
}

double convertirKilobytesEn(double almacenamiento, String unidad) {
  if (unidad == "byte") {
    return almacenamiento * 1024;
  }
  if (unidad == "megabyte") {
    return almacenamiento / 1024;
  }
  if (unidad == "gigabyte") {
    return almacenamiento / (1024 * 1024);
  } else {
    return 0;
  }
}

double convertirMegabytesEn(double almacenamiento, String unidad) {
  if (unidad == "byte") {
    return almacenamiento * 1024 * 1024;
  }
  if (unidad == "kilobyte") {
    return almacenamiento * 1024;
  }
  if (unidad == "gigabyte") {
    return almacenamiento / 1024;
  } else {
    return 0;
  }
}

double convertirGigabytesEn(double almacenamiento, String unidad) {
  if (unidad == "byte") {
    return almacenamiento * 1024 * 1024 * 1024;
  }
  if (unidad == "kilobyte") {
    return almacenamiento * 1024 * 1024;
  }
  if (unidad == "megabyte") {
    return almacenamiento * 1024;
  } else {
    return 0;
  }
}

///SECCION FUNCIONES DEL MENU PRINCIPAL
//Funcion para imprimir el menu principal
void imprimirMenu() {
  print("\n\n\n\n   CONVERSOR DE UNIDADES");
  print("1. Temperatura(Celsius/Fahreinheit)");
  print("2. Distancia(Metros/Kilometros/Millas)");
  print("3. Peso(Gramos/Kilogramos/Libras)");
  print("4. Almacenamiento(Bytes/Kilobytes/Megabytes/Gigabytes)");
  print("5. Salir...");
  print("Seleccione una opción valida:");
}

///Funcion que gestiona las opciones del menu principal
void opcionesMenu(int opcion) {
  switch (opcion) {
    case 1:
      subMenuTemperatura();
      break;
    case 2:
      subMenuDistancia();
      break;
    case 3:
      subMenuPeso();
      break;
    case 4:
      subMenuAlmacenamiento();
      break;
    case 5:
      print("Saliendo del programa...");
      exit(0);
    default:
      print("\n\n\n\nOpción no válida, intente nuevamente.");
      break;
  }
}

//funcion principal del menu que itera hasta que el usuario decida salir
void iterarMenu() {
  int opcion = 0;
  imprimirMenu();
  try {
    opcion = int.parse(stdin.readLineSync()!);
    opcionesMenu(opcion);
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    if (opcion != 5) {
      iterarMenu();
    }
  } catch (e) {
    print("Posible Error por datos erroneos: $e");
  }
}
