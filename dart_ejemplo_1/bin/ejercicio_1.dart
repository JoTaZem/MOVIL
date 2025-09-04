
import 'dart:io';

void main(List<String> args) {
  print("\n\n\n_____________________________________________");
  print("       CALCULADORA DE CONSUMO DE DATOS        ");
  print("_____________________________________________");
  consumoMb();
}

double promedioSemanal(double datosMb)
{
  if(datosMb<=0){
    return 0;
  }else{
    return (datosMb/7);
  }
}


void consumoMb(){
  print("Ingrese el consumo de datos de los ultimos 7 dias en MB:");
  double mb=double.parse(stdin.readLineSync()!);
  double prom=promedioSemanal(mb);
  if(prom<=0){
    print("El consumo de datos no puede ser menor o igual a 0, intente nuevamente:");
    consumoMb();
  }else{
    print("En promedio, el consumo diario es de: $prom MB");
    consumoPlan(prom);
  }
}

void consumoPlan(double consumo){  
  int dias=diasRestantes(1, consumo);
  if(consumo>=2048){
    print("esta semana ya has consumido el total de tu plan de datos(2GB)...Consumo: $consumo MBs...");
  }
  if(dias==23){
    print("consumo estimado mensual: ${consumo*30}  ¡No! agotarás tu plan de datos[2GB]o[2048.00 MB] antes de cumplir el mes.");
  }else{
    print("Con tu consumo actual, agotarás tu plan de datos en $dias días.");
  }
}


int diasRestantes(int dias, double consumo) {
  if(dias==23){
    return dias;
  }if((dias*consumo)>=2048){
    return dias;
  }else{
    return diasRestantes(dias + 1, consumo);
  }
}
