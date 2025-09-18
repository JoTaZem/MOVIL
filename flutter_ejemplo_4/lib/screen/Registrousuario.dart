import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registrousuario extends StatefulWidget {
  const Registrousuario({super.key});

  @override
  State<Registrousuario> createState() => _RegistrousuarioState();
}

class _RegistrousuarioState extends State<Registrousuario> {
  TextEditingController _correoController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  final _formKey=GlobalKey<FormState>();

  Future<void> _savedUser(String correo,String password)async{
    final preferencias = await SharedPreferences.getInstance();
    preferencias.setString("correo", correo);
    preferencias.setString("password", password);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("datos guardados en sharedpreferences")));
  }

  void _pressedRegistrarUsuario(){  
    if(_formKey.currentState!.validate()){
      _savedUser(_correoController.text.trim(),_passwordController.text.trim());
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("La validacion fallo...revisar los campos")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Usuario"),
        backgroundColor: Colors.deepOrange[400],
        foregroundColor: Colors.white,    
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child:ListView(
        children: [
          Form(
            key: _formKey,
            child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network("http://picsum.photos/330/200"),  
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "nombres",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null||value.isEmpty){
                    return "debes digitar sus nombres";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Apellidos",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null||value.isEmpty){
                    return "debes digitar sus Apellidos";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _correoController,
                decoration: InputDecoration(
                  labelText: "correo",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null||value.isEmpty){
                    return "debes digitar su correo";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "contrraseña",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value==null||value.isEmpty){
                    return "debes digitar su contraseña";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed:(){
                _pressedRegistrarUsuario();
              },
              child:Text(
                "Registrarse",
                style: TextStyle(color: Colors.white)
              ),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity,50)
              )
            ),
            ],
          )
          )
        ],
      )
      ),
    );
  }
}