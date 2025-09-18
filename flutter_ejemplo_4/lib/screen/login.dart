import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_4/screen/menuOption.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Color fondo = Color(0xFFAFDDFF);
  final Color encabezado = Color(0xFF60B5FF);
  final Color campos = Color(0xFFFFECDB);
  final Color boton = Color(0xFFFF9149);
  final Color texto = Color(0xFF222222);

  Widget buildTextField({
    required String label,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      style: TextStyle(color: texto),
      decoration: InputDecoration(
        filled: true,
        fillColor: campos,
        labelText: label,
        labelStyle: TextStyle(color: texto),
        prefixIcon: Icon(icon, color: encabezado),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Icon(Icons.person_pin, size: 80, color: encabezado),
            SizedBox(height: 16),
            Text(
              "Bienvenido",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: texto),
            ),
            SizedBox(height: 8),
            Text(
              "Inicia sesión para continuar",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: texto.withValues()),
            ),
            SizedBox(height: 94),
            TextField(
              style: TextStyle(color: texto),
              decoration: InputDecoration(
                filled: true,
                fillColor: campos,
                labelText: 'Correo electrónico',
                labelStyle: TextStyle(color: texto),
                prefixIcon: Icon(Icons.email, color: encabezado),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              style: TextStyle(color: texto),
              decoration: InputDecoration(
                filled: true,
                fillColor: campos,
                labelText: 'Contraseña',
                labelStyle: TextStyle(color: texto),
                prefixIcon: Icon(Icons.lock, color: encabezado),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 24),
            
            const SizedBox(height: 30),
              buildTextField(label: "Correo electrónico", icon: Icons.email),
              const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => menuOption())); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: boton,
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text('Iniciar sesión',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("¿Olvidaste tu contraseña? ",
                    style: TextStyle(color: texto)),
                GestureDetector(
                  onTap: () {},
                  child: Text("Recuperar",
                      style: TextStyle(
                          color: encabezado, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("¿No tienes una cuenta? ", style: TextStyle(color: texto)),
                GestureDetector(
                  onTap: () {
                    /* Navigator.push(context, MaterialPageRoute(builder: (context) => register())); */
                  },
                  child: Text("Regístrate",
                      style: TextStyle(
                          color: encabezado, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}