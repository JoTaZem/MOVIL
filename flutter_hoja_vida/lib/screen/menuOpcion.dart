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
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ListTile(
              title: Text("Inicio"),
            ),
            ListTile(
              title: Text("Acerca de"),
            ),
            ListTile(
              title: Text("Correo"),
            ),
            ListTile(
              title: Text("salir"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Estudios"),
          ),
          ListTile(
            title: Text("Empleos"),
          ),
        ],
      ),
    );
  }
}