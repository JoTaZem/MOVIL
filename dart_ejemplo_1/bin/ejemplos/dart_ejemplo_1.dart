void main()
{
  
  /*int numero1 = 10;
  int numero2 = 20;
  int numero3 = 25;
  int numero4 = 23;
  determinarMayor(numero1, numero2);
  determinarMayor(numero2, numero1);
  determinarMayor(numero3, numero4);
  determinarMayor(numero4, numero4);*/
  categoriaEdad(5);
  categoriaEdad(13);
  categoriaEdad(25);
  categoriaEdad(50);
  categoriaEdad(51);

}


void determinarMayor(int num1,int num2)
{
  if(num1 > num2){
    print("el numero $num1 es mayor que el numero $num2");
  }
  if(num1 < num2){
    print("el numero $num2 es mayor que el numero $num1");
  }
  if( num1 == num2){
    print("los numeros son iguales");
  }
}
void categoriaEdad(int edad)
{
  edad>=0 && edad<=5? print("la edad de $edad años Es un Infalte") :
  edad>=6 && edad<=13? print("Es un niño"):
  edad>=14 && edad <=25? print(" Es un joven"):
  edad>=26 && edad <=50? print("Es un adulto"):
  print("Es un adulto mayor");
}