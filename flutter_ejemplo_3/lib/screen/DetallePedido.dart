import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_3/screen/pedidos.dart';

class Detallepedido extends StatefulWidget {
  const Detallepedido({super.key});

  @override
  State<Detallepedido> createState() => _DetallepedidoState();
}

class _DetallepedidoState extends State<Detallepedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del pedido'),
      ),
      body: ListView.builder(
        itemCount: listaPedidos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                Text("data"),
                Text("data")

              ],
            ),
          );
        },
      )
    );
  }
}