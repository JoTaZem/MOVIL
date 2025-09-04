import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppStore());
}

class AppStore extends StatefulWidget {
  
  const AppStore({super.key});
  @override
  State<AppStore> createState() => _AppStoreState();
}

class _AppStoreState extends State<AppStore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "\t CTPI - ADSO 2923603",
      home: Scaffold(
        appBar: AppBar(
          title: Text("\t CTPI - ADSO 2923603..."),
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: Column(
            children:[ 
              ListTile(
                title: Text("Home"),
                subtitle: Text("Home"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.home),
                onTap: (){
                  print("presiono opcion home");
                },
              ),
              ListTile(
                title: Text("Muebles"),
                subtitle: Text("Muebles"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.arrow_right_outlined),
                onTap: (){
                  print("presiono opcion muebles");
                },
              ),
              ListTile(
                title: Text("Pedidos"),
                subtitle: Text("Pedidos"),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                leading: Icon(Icons.arrow_right_rounded),
                onTap: (){
                  print("presiono opcion Pedidos");
                },
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all( 40),
          children:[ Card(
            child: InkWell(
              onTap: () {
                print("Card presionada");
              },
              child: const SizedBox(
                width: 420,
                height: 45,
                child: Text("home"),
              ),
            ),
          ),
            Card(
              child: InkWell(
                onTap: () {
                  print("Card presionada");
                },
                child: const SizedBox(
                  width: 420,
                  height: 45,
                  child: Text("Muebles"),
                ),
              ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                print("Card presionada");
              },
              child: const SizedBox(
                width: 420,
                height: 45,
                child: Text("Pedidos"),
              ),
            ),
          ),]
        )
      ), 
    );
  }
}