class PersonaActividad
{
  //atributos de clase
  String nombre;
  int edad;
  double altura;
  double salario;

  //constructor
  PersonaActividad(this.nombre,this.edad,this.altura,this.salario);
  
  //funciones o metodos
  void presentacion(){
    print("Saludos a todos...\n mi nombre es $nombre");
  }

  void esMayorEdad(){
    if(edad>=18){
      print("$nombre es mayor de edad: $edad años");
    }else{
      print("$nombre es menor de edad: $edad años");
    }
  }

  void salarioMinimo(){
    double alimentacion=salario*0.012;
    double retefuente=salario*0.005;
    if(salario>=1500000){
      print("Su Salario supera el salario minimo : $salario");
      print("aux Alimentacion del 1.2% : $alimentacion");
      print("Retefuente 0.5% : $retefuente");
      print("Salario Total: ${salario+alimentacion-retefuente}");
    }
  }
}

void main(List<String> args) {
  PersonaActividad persona1 = PersonaActividad("Jhon", 18, 1.62, 2700000.0);
  PersonaActividad persona2 = PersonaActividad("Juan", 17, 1.72, 1500000.0);
  persona1.presentacion();
  persona1.esMayorEdad();
  persona1.salarioMinimo();
  persona2.presentacion();
  persona2.esMayorEdad();
  persona2.salarioMinimo();
}