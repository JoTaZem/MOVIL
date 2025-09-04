import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppStore());
}

class AppStore extends StatefulWidget {
  const AppStore({super.key});

  @override
  // codigo
  State<AppStore> createState() => _AppStoreState();
}

class _AppStoreState extends State<AppStore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muebles cauca",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calidad a su servicio."),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              ListTile(
                title: Text("Home"),
                subtitle: Text("Portal personas"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.home),
                onTap: () {
                  print("presiono la opcion 1");
                },
              ),
              ListTile(
                title: Text("Muebles Officina"),
                subtitle: Text("muebles officina"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.home),
                onTap: () {
                  print("presiono la opcion 1");
                },
              ),
              ListTile(
                title: Text("Pedidos"),
                subtitle: Text("pedidos"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.featured_play_list),
                onTap: () {
                  print("presiono la opcion 1");
                },
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/mueble2.jpg'),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(child: Text('casa'), width: 600, height: 60),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('Muebles de hogar'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('muebles de casa'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('estruturas'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(child: Text('casa'), width: 600, height: 60),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('Muebles de hogar'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('muebles de casa'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('estruturas'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(child: Text('casa'), width: 600, height: 60),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('Muebles de hogar'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('muebles de casa'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('estruturas'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(child: Text('casa'), width: 600, height: 60),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('Muebles de hogar'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('muebles de casa'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  print("ejecuto el tap");
                },
                child: SizedBox(
                  child: Text('estruturas'),
                  width: 600,
                  height: 60,
                ),
              ),
            ),
            Image.asset('assets/mueble.jpg'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('agregar una nueva categoria');
          },
          child: Icon(Icons.add_rounded),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android),
              label: "llamar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face_3),
              label: "contactos",
            ),
          ],
        ),
      ),
    );
  }
}