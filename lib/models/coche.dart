import 'vehiculo.dart';

class Coche extends Vehiculo{
  int plazas;
  bool requiereLicencia;

  Coche({
    required super.id, 
    required super.bateriaPorcentaje, 
    required super.precioPorMinuto, 
    super.enUso, 
    required this.plazas, 
    required this.requiereLicencia});

    @override
    double calcularCosteReserva(int minutos){
      double suplementoFiltroEcologico = 2.0;
      double coste = minutos * this.precioPorMinuto + suplementoFiltroEcologico;
      return coste;
    }
    @override
    String toString() {
        return "$id";
    }
}