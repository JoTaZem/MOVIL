import 'dart:io';

String name = "";
String password = "";
String email = "";
int age = 0;
int phone = 0;
List<Map<String, dynamic>> usuarios = [];

void main(List<String> args) {
  print("_____________________________________________");
  print("       REGISTRO DE USUARIOS        ");
  print("_____________________________________________");
  registrarUsuario();
  listarUsuarios();
}

void registrarUsuario() {
  print("ingrese su nombre:");
  name = stdin.readLineSync()!;
  password = verificarPassword();
  email = verificarEmail();
  age = verificarEdad();
  phone = verificarPhone();

  usuarios.add({
    "nombre": name,
    "contraseña": password,
    "correo": email,
    "edad": age,
    "telefono": phone,
  });

  print("Usuario registrado exitosamente.\n presione Enter para continuar...");
  String salir = stdin.readLineSync()!;
  print(salir);
}

int verificarEdad() {
  print("ingrese su edad:");
  int edad = int.parse(stdin.readLineSync()!);
  try {
    if (edad >= 13) {
      return edad;
    } else {
      print("debe ser mayor de 13 anios.Intente nuevamente.");
      return verificarEdad();
    }
  } catch (e) {
    print("error: $e");
  }
  return edad;
}

String verificarPassword() {
  print("ingrese su contraseña:");
  String pass = stdin.readLineSync()!;
  try {
    if (pass.length >= 8) {
      return pass;
    } else {
      print("contraseña incorrecta, minimo 8 caracteres, intente nuevamente.");
      return verificarPassword();
    }
  } catch (e) {
    print("error: $e");
  }
  return pass;
}

String verificarEmail() {
  print("ingrese su correo electronico:");
  String mail = stdin.readLineSync()!;
  try {
    if (mail.contains("@")) {
      return mail;
    } else {
      print("correo incorrecto, debe contener una @, intente nuevamente.");
      return verificarEmail();
    }
  } catch (e) {
    print("error: $e");
  }
  return mail;
}

int verificarPhone() {
  print("ingrese su numero de telefono:");
  int tel = int.parse(stdin.readLineSync()!);
  try {
    if (tel.toString().length == 10) {
      return tel;
    } else {
      print("numero incorrecto...debe tener 10 digitos, intente nuevamente.");
      return verificarPhone();
    }
  } catch (e) {
    print("error: $e");
  }
  return tel;
}

void listarUsuarios() {
  print("\n\n\n\n   LISTA DE USUARIOS");
  if (usuarios.isEmpty) {
    print("No hay usuarios registrados.");
  } else {
    int posicion = 0;
    for (var usuario in usuarios) {
      posicion += 1;
      print("\n usuario #${(posicion)}: ");
      print(
        "Nombre: ${usuario['nombre']}, Contraseña: ${usuario['contraseña']}, Correo: ${usuario['correo']}, Edad: ${usuario['edad']}, Teléfono: ${usuario['telefono']}",
      );
    }
    print("Presione Enter para continuar...");
    String salir = stdin.readLineSync()!;
    print(salir);
    print("________________________________\n");
  }
}
