import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Image(image: NetworkImage("https://picsum.photos/330/200")),
            Divider(),
            ListTile(
              title: Text("Home"),
              subtitle: Text("Descubre nuestras ofertas..."),
              trailing: Icon(Icons.arrow_circle_right),
              leading: Icon(Icons.home),
            )
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown[300],
        title: Text("hola que tal. col"),
      ),
    );
  }
}