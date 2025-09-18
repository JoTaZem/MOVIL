import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  TextEditingController _correoController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _nombreController=TextEditingController();
  TextEditingController _apellidoController=TextEditingController();

  final _formKey=GlobalKey<FormState>();
  
  @override
  void dispose(){
    _correoController.dispose();
    _passwordController.dispose();
    _nombreController.dispose();
    _apellidoController.dispose();
    super.dispose();
  }

  Future<void> _savedUser(String correo,String password)async{
    final preferencias = await SharedPreferences.getInstance();
    await preferencias.setString("correo", correo);
    await preferencias.setString("password", password);
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
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form (key: _formKey,child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("http://picsum.photos/330/200"),
            SizedBox(height: 10),
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: "nombres",
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "debe ingresar sus nombres";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _apellidoController,
              decoration: InputDecoration(
                labelText: "apellidos",
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "debe ingresar sus apellidos";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _correoController,
              decoration: InputDecoration(
                labelText: "correo",
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "debe ingresar su correo";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "contraseña",
                border: OutlineInputBorder()
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "debe ingresar su contraseña";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                _pressedRegistrarUsuario();
                dispose();
              },
              child:Text("registrarse"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity,50)
              ),
            )
          ],
        )),
      ),
    ); 
  }
}