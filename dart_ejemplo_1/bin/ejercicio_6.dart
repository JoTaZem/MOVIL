class TransportePublico {
  String tipo;
  double distancia;
  double tarifa;

  TransportePublico(this.tipo, this.distancia, {this.tarifa = 0.0}) {
    tarifa = tarifas(distancia);
  }

  double tarifas(double recorrido) {
    if (tipo.toLowerCase() == "bus") {
      return 2600.0;
    }
    if (tipo.toLowerCase() == "metro") {
      return 2000.0;
    }
    if (tipo.toLowerCase() == "taxi") {
      return 2250.0 * (distancia / 1.5);
    }
    if (tipo.toLowerCase() == "app movil") {
      return 1850.0 * (distancia / 1.5);
    } else {
      print("Tipo de transporte no reconocido.");
      return 3000.0;
    }
  }

  void costoRecorrido() {
    if (tipo.toLowerCase() == "bus" || tipo.toLowerCase() == "metro") {
      print(
        "Tarifa Fija para el $tipo: ${tarifa.toStringAsFixed(2)} en $distancia km",
      );
    } else {
      print(
        "El costo del recorrido de $distancia km en $tipo es ${tarifa.toStringAsFixed(2)}",
      );
    }
  }
}

void main() {
  TransportePublico bus = TransportePublico("bus", 5.7);
  TransportePublico metro = TransportePublico("metro", 5.7);
  TransportePublico taxi = TransportePublico("taxi", 5.7);
  TransportePublico appMovil = TransportePublico("app Movil", 5.7);
  print("\n\n   TRANSPORTE PUBLICO PRUEBAS\n");
  bus.costoRecorrido();
  metro.costoRecorrido();
  taxi.costoRecorrido();
  appMovil.costoRecorrido();
}
