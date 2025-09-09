import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_4/screen/suma.dart';
import 'package:flutter_ejemplo_4/screen/calculadora.dart';
class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
        title: Text(
          'Aritmetic sig in login',style: TextStyle(
            color: Colors.green[200]), 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network("http://picsum.photos/330/200"),
            SizedBox(height: 12),
            Card(
              child: ListTile(
                title: Text("Suma"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Suma()));
                },
              ),
            ),
            SizedBox(height: 12),
            Card(
              child: ListTile(
                title: Text("Calculadora"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>calculadora()));
                },
              ),
            ),
            SizedBox(height: 12),
            Card(
              child: ListTile(
                title: Text("Registro"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                },
              ),
            ),
            SizedBox(height: 12),
            Card(
              child: ListTile(
                title: Text("Login"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                },
              ),
            ),
          ],
        ),
        ),
    );
  }
}