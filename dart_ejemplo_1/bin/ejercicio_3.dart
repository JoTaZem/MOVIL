import 'dart:io';

//atributos del ejercicio
int porcentajeActual = 0;
int horasUso = 0;
int horasRestantes = 0;

///
///Funciones del ejercicio

//Funcion principal
void main(List<String> args) {
  print("_____________________________________________");
  print("       CALCULADORA DE CONSUMO DE BATERIA        ");
  print("_____________________________________________");
  consumoBateria();
  imprimirOpciones();
  int opcion = int.parse(stdin.readLineSync()!);
  opcionesAhorro(opcion);
}

void imprimirOpciones() {
  print("Ahorrar Bateria\nseleccione:");
  print("1. Activar ahorro básico");
  print("2. Activar ahorro avanzado");
}

bool opcionesAhorro(int opcion) {
  if (opcion == 1) {
    return ahorroBasico();
  }
  if (opcion == 2) {
    return ahorroAvanzado();
  } else {
    print("Opción inválida. Por favor, seleccione una opción válida.");
    imprimirOpciones();
    return opcionesAhorro(opcion);
  }
}

bool ahorroBasico() {
  double horasExtra = (horasRestantes * 1.3);
  print("Activando ahorro básico...");
  print("La duración de la batería se extenderá un 30% más....");
  print(
    "la bateria durará aproximadamente ${horasExtra.toStringAsFixed(1)} horas.",
  );
  return true;
}

bool ahorroAvanzado() {
  double horasExtra = (horasRestantes * 1.5);
  print("Activando ahorro avanzado...");
  print("La duración de la batería se extenderá un 50% más....");
  print(
    "la batería durará aproximadamente ${horasExtra.toStringAsFixed(1)} horas.",
  );
  return true;
}

void consumoBateria() {
  print("Ingrese el porcentaje actual de la batería (0-100): ");
  porcentajeActual = int.parse(stdin.readLineSync()!);
  print("Ingrese el tiempo de uso en horas: ");
  horasUso = int.parse(stdin.readLineSync()!);
  horasRestantes = horasBateria(porcentajeActual, horasUso);
  if (porcentajeActual == 0) {
    print("La batería se ha consumido por completo.");
  }
  if (horasUso < 1) {
    print("El tiempo de uso debe ser al menos 1 hora.");
  }
  if (horasRestantes < 1) {
    print("La batería se agotará en menos de 1 hora.");
  } else {
    print("La batería durará aproximadamente $horasRestantes horas.");
  }
}

int horasBateria(int porcentajeActual, int horasUso) {
  int porcentajeConsumido = 100 - porcentajeActual;
  double tazaConsumo = porcentajeConsumido / horasUso;
  return (porcentajeActual / tazaConsumo).toInt();
}
