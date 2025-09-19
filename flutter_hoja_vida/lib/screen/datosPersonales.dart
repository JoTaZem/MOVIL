import 'package:flutter/material.dart';

class Datospersonales extends StatefulWidget {
  const Datospersonales({super.key});

  @override
  State<Datospersonales> createState() => _DatospersonalesState();
}

class _DatospersonalesState extends State<Datospersonales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos Personales"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("nombres"),
          ),
          ListTile(
            title: Text("apellidos"),
          ),
          ListTile(
            title: Text("direccion"),
          ),
          ListTile(
            title: Text("telefono"),
          ),
          ListTile(
            title: Text("email"),
          ),
        ],

      ),
    );
  }
}

List<Map<String, String>> listaPedidos=[{},{}];