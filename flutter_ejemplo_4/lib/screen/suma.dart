import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_4/screen/menuOption.dart';

class Suma extends StatefulWidget {
  const Suma({super.key});

  @override
  State<Suma> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  TextEditingController _number1Controller=TextEditingController();
  TextEditingController _number2Controller=TextEditingController();
  double _result=0;
  final _formKey=GlobalKey<FormState>();
  void _calculateAdd(){
    if(_formKey.currentState?.validate()?? false){
      double number1=double.tryParse(_number1Controller.value.text)??0.0;
      double number2=double.tryParse(_number2Controller.value.text)??0.0;
      setState(() {
        _result=number1+number2;
      });
    }
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: Text("Suma:"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>menuOption()));
        }, icon: Icon(Icons.arrow_back_rounded)),
      ),
      body:Padding(padding: const EdgeInsets.all(8.0),
      child:Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Digite los numeros",
            style:TextStyle(
              fontSize: 30,
              fontFamily: "Arial Narrow",
              fontWeight: FontWeight.bold,
              color:Colors.orange[200]
            ),
            ),
            SizedBox(height: 12),
            TextFormField(
              
              controller: _number1Controller,
              decoration: InputDecoration(
                labelText: "Ingrese primer numero",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              keyboardType: TextInputType.number,
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Debe ingresar un numero";
                }if(double.tryParse(value)==null){
                  return "ingrese un numero valido";
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: _number2Controller,
              decoration: InputDecoration(
                labelText: "Ingrese segundo numero",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              keyboardType: TextInputType.number,
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Debe ingresar un numero";
                }if(double.tryParse(value)==null){
                  return "ingrese un numero valido";
                }
                return null;
              },
            ),
            SizedBox(height: 12),
        
            ElevatedButton(onPressed:(){
              _calculateAdd();
            },
              child:Text(
                "calcular ",
                style: TextStyle(color: Colors.white)
              ),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity,50)
              )
            ),
            SizedBox(height: 20),
            Text("Resultado: $_result",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange[200]
              ),
            )
            
          ],
        ),
      ),)
    );
  }
}