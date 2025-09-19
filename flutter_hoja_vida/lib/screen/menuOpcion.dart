import 'package:flutter/material.dart';

class MenuOpcion extends StatefulWidget {
  const MenuOpcion({super.key});

  @override
  State<MenuOpcion> createState() => _MenuOpcionState();
}

class _MenuOpcionState extends State<MenuOpcion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu datos personales"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ListTile(
              title: Text("Inicio"),
              leading: Icon( Icons.home),
            ),
            ListTile(
              title: Text("Acerca de"),
              leading: Icon( Icons.info),
            ),
            ListTile(
              title: Text("Correo"),
              leading: Icon( Icons.email),
            ),
            ListTile(
              title: Text("salir"),
              leading: Icon( Icons.exit_to_app),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Datos personales"),
            onTap: () {
              Navigator.pushNamed(context, '/datosPersonales');
            },
          ),
          ListTile(
            title: Text("Estudios"),
            onTap: () {
              Navigator.pushNamed(context, '/estudios');
            },
          ),
          ListTile(
            title: Text("Empleos"),
          ),
        ],
      ),
    );
    
  }
}