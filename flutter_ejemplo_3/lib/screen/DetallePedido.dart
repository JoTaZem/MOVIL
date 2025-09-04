import 'package:flutter/material.dart';

class Detallepedido extends StatefulWidget {
  const Detallepedido({super.key});

  @override
  State<Detallepedido> createState() => _DetallepedidoState();
}

class _DetallepedidoState extends State<Detallepedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
    );
  }
}