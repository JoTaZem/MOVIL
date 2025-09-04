import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_3/screen/HomePage.dart';
import 'package:flutter_ejemplo_3/screen/Pedidos.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(), 
      routes: {'/pedidos':(context)=>Pedidos()}
    );
  }
}
