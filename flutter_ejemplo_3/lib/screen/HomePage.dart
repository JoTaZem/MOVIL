import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_3/screen/Pedidos.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(image: NetworkImage('https://picsum.photos/330/200')),
            Divider(),
            ListTile(
              title: Text('Descubre nuestras ofertas'),
              trailing: Icon(Icons.arrow_circle_right),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Carrito de compras'),
              subtitle: Text('Tus articulos seleccionados'),
              trailing: Icon(Icons.arrow_circle_right),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text('Mis pedidos'),
              subtitle: Text('Pedidos realizados a tienda'),
              trailing: Icon(Icons.arrow_circle_right),
              leading: Icon(Icons.store),
              onTap: () {
                print('Mis pedidos');
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Pedidos()));
              },
            )
          ],
        ),
      ),
    ),
    appBar: AppBar(
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 44, 109, 139),
      title: Text('A katronicks Col'),
    ),
    body: ListView(
      children: [
        SizedBox(height: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          height: 40,
          child: ElevatedButton.icon(onPressed:() {
            
          },icon: Icon(Icons.phone_android),
          label: Text('Tecnologia y celulares'),),
        ),
        SizedBox(height: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          height: 40,
          child: ElevatedButton.icon(onPressed:() {
            
          },icon: Icon(Icons.shopping_cart_rounded),
          label: Text('Zona Gamer -juegos'),),
        )
      ],
    ),
    );
    
  }
}