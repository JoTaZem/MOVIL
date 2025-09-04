import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  const Pedidos({super.key});

  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown[300],
        title: Text("pedidos clientes"),

      ),
      body: ListView.builder(
        itemCount: listaPedidos.length,
        itemBuilder: (BuildContext context,int index){
        //return Text(listaPedidos[index]['descripcion']?? ""); 
        return ListTile(
          title: Text(listaPedidos[index]['nombreCliente']?? ""),
          subtitle: Text(listaPedidos[index]['descripcion']?? ""),
          leading:ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://picsum.photos/330/200",
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),

        );
      }),
    );
  }
}

List<Map<String, String>> listaPedidos = [
  {
    "numeroPedido": "001",
    "nombreCliente": "Carlos Pérez",
    "descripcion": "Laptop Dell Inspiron 15",
    "cantidad": "2",
    "fechaEntrega": "2025-09-10"
  },
  {
    "numeroPedido": "002",
    "nombreCliente": "María Gómez",
    "descripcion": "Smartphone Samsung Galaxy S23",
    "cantidad": "1",
    "fechaEntrega": "2025-09-12"
  },
  {
    "numeroPedido": "003",
    "nombreCliente": "Andrés Rodríguez",
    "descripcion": "Televisor LG 55 pulgadas 4K",
    "cantidad": "1",
    "fechaEntrega": "2025-09-14"
  },
  {
    "numeroPedido": "004",
    "nombreCliente": "Laura Martínez",
    "descripcion": "Refrigerador Samsung No Frost",
    "cantidad": "1",
    "fechaEntrega": "2025-09-15"
  },
  {
    "numeroPedido": "005",
    "nombreCliente": "Juan López",
    "descripcion": "Tablet Apple iPad 10.2",
    "cantidad": "3",
    "fechaEntrega": "2025-09-16"
  },
  {
    "numeroPedido": "006",
    "nombreCliente": "Sofía Torres",
    "descripcion": "Parlante JBL Charge 5",
    "cantidad": "2",
    "fechaEntrega": "2025-09-18"
  },
  {
    "numeroPedido": "007",
    "nombreCliente": "Ricardo Ramírez",
    "descripcion": "Aspiradora Robótica Xiaomi",
    "cantidad": "1",
    "fechaEntrega": "2025-09-19"
  },
  {
    "numeroPedido": "008",
    "nombreCliente": "Diana Herrera",
    "descripcion": "Cafetera Nespresso Essenza",
    "cantidad": "2",
    "fechaEntrega": "2025-09-20"
  },
  {
    "numeroPedido": "009",
    "nombreCliente": "Fernando Castro",
    "descripcion": "Monitor ASUS 27'' Gaming",
    "cantidad": "1",
    "fechaEntrega": "2025-09-21"
  },
  {
    "numeroPedido": "010",
    "nombreCliente": "Natalia Jiménez",
    "descripcion": "Auriculares Sony WH-1000XM5",
    "cantidad": "1",
    "fechaEntrega": "2025-09-22"
  },
  {
    "numeroPedido": "011",
    "nombreCliente": "Luis Morales",
    "descripcion": "Smartwatch Garmin Venu 2",
    "cantidad": "2",
    "fechaEntrega": "2025-09-23"
  },
  {
    "numeroPedido": "012",
    "nombreCliente": "Ana Castillo",
    "descripcion": "Impresora HP LaserJet Pro",
    "cantidad": "1",
    "fechaEntrega": "2025-09-24"
  },
  {
    "numeroPedido": "013",
    "nombreCliente": "David Gutiérrez",
    "descripcion": "Consola PlayStation 5",
    "cantidad": "1",
    "fechaEntrega": "2025-09-25"
  },
  {
    "numeroPedido": "014",
    "nombreCliente": "Camila Vargas",
    "descripcion": "Cámara Canon EOS Rebel T7",
    "cantidad": "1",
    "fechaEntrega": "2025-09-26"
  },
  {
    "numeroPedido": "015",
    "nombreCliente": "Felipe Navarro",
    "descripcion": "Router TP-Link AX5400",
    "cantidad": "2",
    "fechaEntrega": "2025-09-27"
  },
  {
    "numeroPedido": "016",
    "nombreCliente": "Isabella Silva",
    "descripcion": "Batidora KitchenAid Artisan",
    "cantidad": "1",
    "fechaEntrega": "2025-09-28"
  },
  {
    "numeroPedido": "017",
    "nombreCliente": "Mateo Cárdenas",
    "descripcion": "Microondas LG Smart Inverter",
    "cantidad": "1",
    "fechaEntrega": "2025-09-29"
  },
  {
    "numeroPedido": "018",
    "nombreCliente": "Valentina Ríos",
    "descripcion": "iPhone 15 Pro Max",
    "cantidad": "2",
    "fechaEntrega": "2025-09-30"
  },
  {
    "numeroPedido": "019",
    "nombreCliente": "Julián Méndez",
    "descripcion": "Consola Nintendo Switch OLED",
    "cantidad": "1",
    "fechaEntrega": "2025-10-01"
  },
  {
    "numeroPedido": "020",
    "nombreCliente": "Gabriela Suárez",
    "descripcion": "Secadora Whirlpool 20 kg",
    "cantidad": "1",
    "fechaEntrega": "2025-10-02"
  },
  {
    "numeroPedido": "021",
    "nombreCliente": "Santiago Arias",
    "descripcion": "Laptop MacBook Air M2",
    "cantidad": "1",
    "fechaEntrega": "2025-10-03"
  },
  {
    "numeroPedido": "022",
    "nombreCliente": "Mónica Delgado",
    "descripcion": "Televisor Sony Bravia 65'' 4K",
    "cantidad": "1",
    "fechaEntrega": "2025-10-04"
  },
  {
    "numeroPedido": "023",
    "nombreCliente": "Esteban Muñoz",
    "descripcion": "Bicicleta Eléctrica Xiaomi Mi",
    "cantidad": "1",
    "fechaEntrega": "2025-10-05"
  },
  {
    "numeroPedido": "024",
    "nombreCliente": "Lucía Patiño",
    "descripcion": "Consola Xbox Series X",
    "cantidad": "1",
    "fechaEntrega": "2025-10-06"
  },
  {
    "numeroPedido": "025",
    "nombreCliente": "Pedro Fernández",
    "descripcion": "Tablet Samsung Galaxy Tab S8",
    "cantidad": "2",
    "fechaEntrega": "2025-10-07"
  },
  {
    "numeroPedido": "026",
    "nombreCliente": "Claudia Álvarez",
    "descripcion": "Cámara GoPro Hero 12",
    "cantidad": "1",
    "fechaEntrega": "2025-10-08"
  },
  {
    "numeroPedido": "027",
    "nombreCliente": "Manuel Ortega",
    "descripcion": "Proyector Epson Full HD",
    "cantidad": "1",
    "fechaEntrega": "2025-10-09"
  },
  {
    "numeroPedido": "028",
    "nombreCliente": "Patricia Sánchez",
    "descripcion": "Parrilla Eléctrica Oster",
    "cantidad": "1",
    "fechaEntrega": "2025-10-10"
  },
  {
    "numeroPedido": "029",
    "nombreCliente": "Diego León",
    "descripcion": "Auriculares Bose QuietComfort",
    "cantidad": "1",
    "fechaEntrega": "2025-10-11"
  },
  {
    "numeroPedido": "030",
    "nombreCliente": "Alejandra Molina",
    "descripcion": "Laptop Lenovo ThinkPad X1",
    "cantidad": "1",
    "fechaEntrega": "2025-10-12"
  },
  {
    "numeroPedido": "031",
    "nombreCliente": "Miguel Andrade",
    "descripcion": "Licuadora Oster Reversible",
    "cantidad": "2",
    "fechaEntrega": "2025-10-13"
  },
  {
    "numeroPedido": "032",
    "nombreCliente": "Carolina Reyes",
    "descripcion": "Plancha de vapor Philips",
    "cantidad": "1",
    "fechaEntrega": "2025-10-14"
  },
  {
    "numeroPedido": "033",
    "nombreCliente": "José Hernández",
    "descripcion": "Consola Retro Sega Mini",
    "cantidad": "1",
    "fechaEntrega": "2025-10-15"
  },
  {
    "numeroPedido": "034",
    "nombreCliente": "Tatiana Beltrán",
    "descripcion": "Secador de Cabello Dyson Supersonic",
    "cantidad": "1",
    "fechaEntrega": "2025-10-16"
  },
  {
    "numeroPedido": "035",
    "nombreCliente": "Cristian Peña",
    "descripcion": "Smartwatch Apple Watch Ultra",
    "cantidad": "1",
    "fechaEntrega": "2025-10-17"
  },
  {
    "numeroPedido": "036",
    "nombreCliente": "Adriana Correa",
    "descripcion": "Smart TV Samsung 75'' QLED",
    "cantidad": "1",
    "fechaEntrega": "2025-10-18"
  },
  {
    "numeroPedido": "037",
    "nombreCliente": "Jorge Rincón",
    "descripcion": "Sistema de sonido Sony 7.1",
    "cantidad": "1",
    "fechaEntrega": "2025-10-19"
  },
  {
    "numeroPedido": "038",
    "nombreCliente": "Paola Ortiz",
    "descripcion": "Impresora Epson EcoTank",
    "cantidad": "1",
    "fechaEntrega": "2025-10-20"
  },
  {
    "numeroPedido": "039",
    "nombreCliente": "Daniela Lozano",
    "descripcion": "Freidora de aire Philips XXL",
    "cantidad": "1",
    "fechaEntrega": "2025-10-21"
  },
  {
    "numeroPedido": "040",
    "nombreCliente": "Sebastián Núñez",
    "descripcion": "Router Netgear Nighthawk",
    "cantidad": "2",
    "fechaEntrega": "2025-10-22"
  },
  {
    "numeroPedido": "041",
    "nombreCliente": "Mariana Fajardo",
    "descripcion": "Portátil Acer Nitro 5 Gaming",
    "cantidad": "1",
    "fechaEntrega": "2025-10-23"
  },
  {
    "numeroPedido": "042",
    "nombreCliente": "Óscar Mejía",
    "descripcion": "Estufa Mabe 6 puestos",
    "cantidad": "1",
    "fechaEntrega": "2025-10-24"
  },
  {
    "numeroPedido": "043",
    "nombreCliente": "Liliana Cabrera",
    "descripcion": "Horno eléctrico Oster 40L",
    "cantidad": "1",
    "fechaEntrega": "2025-10-25"
  },
  {
    "numeroPedido": "044",
    "nombreCliente": "Hernán Salazar",
    "descripcion": "Consola PlayStation 4 Slim",
    "cantidad": "1",
    "fechaEntrega": "2025-10-26"
  },
  {
    "numeroPedido": "045",
    "nombreCliente": "Gloria Vargas",
    "descripcion": "Lavadora LG 22 kg",
    "cantidad": "1",
    "fechaEntrega": "2025-10-27"
  },
  {
    "numeroPedido": "046",
    "nombreCliente": "Camilo Pineda",
    "descripcion": "Cámara Nikon Z50 Mirrorless",
    "cantidad": "1",
    "fechaEntrega": "2025-10-28"
  },
  {
    "numeroPedido": "047",
    "nombreCliente": "Verónica Moreno",
    "descripcion": "Batería externa Anker 20000mAh",
    "cantidad": "2",
    "fechaEntrega": "2025-10-29"
  },
  {
    "numeroPedido": "048",
    "nombreCliente": "Mauricio Delgado",
    "descripcion": "Silla Gamer Razer Iskur",
    "cantidad": "1",
    "fechaEntrega": "2025-10-30"
  },
  {
    "numeroPedido": "049",
    "nombreCliente": "Rosa Campos",
    "descripcion": "Kindle Paperwhite 11ª Gen",
    "cantidad": "1",
    "fechaEntrega": "2025-10-31"
  },
  {
    "numeroPedido": "050",
    "nombreCliente": "Iván Ruiz",
    "descripcion": "Bocina portátil Sony SRS-XB33",
    "cantidad": "2",
    "fechaEntrega": "2025-11-01"
  },
];