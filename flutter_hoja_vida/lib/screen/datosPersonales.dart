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
          SizedBox(
            width: 200, // Ancho de 200 píxeles
            height: 150, // Alto de 150 píxeles
            child: Image.network("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
          ),
          ListTile(
            title: Text("nombres:"),
            subtitle: Text("Jhon Fredy"),
            leading: Icon(Icons.person)
          ),
          ListTile(
            title: Text("apellidos:"),
            subtitle: Text("Zemanate Benjumea"),
            leading: Icon(Icons.person)
          ),
          ListTile(
            title: Text("direccion:"),
            subtitle: Text("calle 9b # 1ae- 17 Santa ines"),
            leading: Icon(Icons.location_on)
          ),
          ListTile(
            title: Text("telefono:"),
            subtitle: Text("+57 3147072433"),
            leading: Icon(Icons.phone)
          ),
          ListTile(
            title: Text("email"),
            subtitle: Text("jhonfredyzema2@gmail.com"),
            leading: Icon(Icons.email)
          ),
        ],
      ),
    );
  }
}

