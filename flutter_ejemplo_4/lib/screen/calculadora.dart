import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_4/screen/menuOption.dart';
import 'package:flutter_ejemplo_4/screen/suma.dart';



class calculadora extends StatefulWidget {
  const calculadora({super.key});

  @override
  State<calculadora> createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: Text("Calculadora: Opciones"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>menuOption()));
        }, icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
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
          Card(
            child: ListTile(
                title: Text("Resta"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Suma()));
                },
              ),
          ),
          Card(
            child: ListTile(
                title: Text("producto"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Suma()));
                },
              ),
          ),
          Card(
            child: ListTile(
                title: Text("cociente"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_rounded),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Suma()));
                },
              ),
          )
        ],
      ),
      ),
    );
  }
}