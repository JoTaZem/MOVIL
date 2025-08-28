//-------------------------------------------------------------------
//IMPORTACION DE LIBRERIAS
import 'dart:io';
//-------------------------------------------------------------------

//-------------------------------------------------------------------
//funciones Principal
void main(List<String> args) 
{
  int num = 5;
  int nsuma=sumaEnteros(num);
  print("La suma de los primeros $num enteros es: $nsuma");
  print("Tabla de multiplicar del 5:");
  imprimirTablaMultiplicar(5);
  //print("digite cualquier palabra, ADSO o adso para salir:");
  print(imprimirAdso(stdin.readLineSync()!));
}
//-------------------------------------------------------------------

//-------------------------------------------------------------------
//funciones de cada ejercico
int sumaEnteros(int numero)
{
  if(numero==1){
    return numero;
  }else{
    print(numero);
    return numero +sumaEnteros(numero-1);
  }
}
void imprimirTablaMultiplicar(int numero)
{
  for(int iterador=1; iterador<=10; iterador++){
    print("$numero x $iterador = ${numero * iterador}");
  }
}
String imprimirAdso(String palabra){
  if(palabra=="ADSO" || palabra=="adso"){
    return "saliste con palabra $palabra";
  }else{
    print("La palabra ingresada no es ADSO o a  adso, intente nuevamente:");
    return imprimirAdso(stdin.readLineSync()!);
  }
}
//-------------------------------------------------------------------

