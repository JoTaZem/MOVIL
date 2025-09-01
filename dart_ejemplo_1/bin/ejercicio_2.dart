import 'dart:io';

List<Map<String, String>> contactos = [];
void main(List<String> args) {
  iterarMenu();
}

void agregarContacto() {
  print("\n\n\n\n   AGREGAR CONTACTO");
  print("Ingrese el nombre del contacto:");
  String nombre = stdin.readLineSync()!;
  print("Ingrese el número de teléfono del contacto:");
  String telefono = stdin.readLineSync()!;
  print("Ingrese el correo electrónico del contacto:");
  String correo = stdin.readLineSync()!;
  contactos.add({"nombre": nombre, "telefono": telefono, "correo": correo});
  print("Contacto agregado exitosamente.");
}

void listarContactos() {
  print("\n\n\n\n   LISTA DE CONTACTOS");
  if (contactos.isEmpty) {
    print("No hay contactos registrados.");
  } else {
    int posicion = 0;
    for (var contacto in contactos) {
      posicion += 1;
      print("\n contacto #${(posicion)}: ");
      print(
        "Nombre: ${contacto['nombre']}, Teléfono: ${contacto['telefono']}, Correo: ${contacto['correo']}",
      );
    }
    print("________________________________\n");
  }
}

void imprimirMenu() {
  print("\n\n\n\n   MENU DE CONTACTOS");
  print("1. Agregar contacto");
  print("2. Listar contactos");
  print("0. Salir");
  print("Seleccione una opción valida:");
}

void opcionesMenu(int opcion) {
  switch (opcion) {
    case 1:
      agregarContacto();
      break;
    case 2:
      listarContactos();
      break;
    case 0:
      print("Saliendo del programa...");
      exit(0);
    default:
      print("\n\n\n\nOpción no válida, intente nuevamente.");
      break;
  }
  print("Presione Enter(o cualquier tecla alfanumerica) para continuar...");
  String pausa = stdin.readLineSync()!;
  print(pausa);
}

void iterarMenu() {
  int opcion = 0;
  do {
    imprimirMenu();
    opcion = int.parse(stdin.readLineSync()!);
    opcionesMenu(opcion);
  } while (opcion != 0);
}
