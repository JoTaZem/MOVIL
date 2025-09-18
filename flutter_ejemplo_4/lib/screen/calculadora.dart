import 'package:flutter/material.dart';
import 'package:flutter_ejemplo_4/screen/menuOption.dart';
import 'package:flutter_ejemplo_4/screen/suma.dart';



class calculadora extends StatefulWidget {
  const calculadora({super.key});

  @override
  State<calculadora> createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
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
  void _calculateSubstract(){
    if(_formKey.currentState?.validate()?? false){
      double number1=double.tryParse(_number1Controller.value.text)??0.0;
      double number2=double.tryParse(_number2Controller.value.text)??0.0;
      setState(() {
        _result=number1-number2;
      });
    }
  }
  void _calculateMultiply(){
    if(_formKey.currentState?.validate()?? false){
      double number1=double.tryParse(_number1Controller.value.text)??0.0;
      double number2=double.tryParse(_number2Controller.value.text)??0.0;
      setState(() {
        _result=number1*number2;
      });
    }
  }
  void _calculateDivide(){
    if(_formKey.currentState?.validate()?? false){
      double number1=double.tryParse(_number1Controller.value.text)??0.0;
      double number2=double.tryParse(_number2Controller.value.text)??0.0;
      setState(() {
        _result=number1/number2;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: Text("Calculadora:"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>menuOption()));
        }, icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: ListView(
        children: [
          Image.network("http://picsum.photos/330/200"),
          SizedBox(height: 12),
          
        ],
      ),
      ),
    ),
    );
  }
}