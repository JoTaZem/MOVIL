import 'package:flutter/material.dart';
import 'package:flutter_hoja_vida/screen/menuOpcion.dart';
import 'package:flutter_hoja_vida/screen/datosPersonales.dart';
import 'package:flutter_hoja_vida/screen/estudios.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuOpcion(),
        '/datosPersonales': (context) => const Datospersonales(),
        '/estudios': (context) => const Estudios(),
      },
    );
  }
}
