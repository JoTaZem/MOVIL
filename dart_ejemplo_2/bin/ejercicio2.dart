class CuentaBancaria
{
  //atributos de la clase
  String titular;
  String _numeroCuenta;
  double _saldo;
  bool estado;
  List<dynamic> consignacionCuenta=[];
  //constructor
  CuentaBancaria(this.titular,this._numeroCuenta,{double saldo=0.0,this.estado=true}):_saldo=saldo;


  //funciones y metodos
  void mostrarDatosCuenta(){
    print("\n\t DATOS DE LA CUENTA");
    print("Titular de la cuenta: $titular, Estado: ${estado?"Activo":"Inactivo o Bloqueado"}");
  }
  //getters
  String get numeroCuenta=>_numeroCuenta;
  double get saldo=> _saldo;
  
  //setters
  set saldo(double nuevoSaldo){
    if(nuevoSaldo>0){
      _saldo=nuevoSaldo;
    }
    else{
      print("el saldo no puede ser negativo o 0");
    }
  }
  void consignarCuenta(double monto){
    if(monto>0){
      _saldo+=monto;
      consignacionCuenta.add(monto);
    }else{
      print("Se recibieron retiros mayores a 0");
    }
  }
}

void main(List<String> args) {
  CuentaBancaria cuenta1 = CuentaBancaria("Jhon fredy", "auc12345df");
  cuenta1.mostrarDatosCuenta();
  print("titular: ${cuenta1.titular}");
  print("Saldo actual: ${cuenta1.saldo}");
  cuenta1.saldo=200.0;
  print("saldo Nuevo:${cuenta1.saldo}");
}