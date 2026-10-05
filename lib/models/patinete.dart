import 'vehiculo.dart';

class Patinete extends Vehiculo{
  int velocidadMaxima;

  Patinete({required super.id, 
  required super.bateriaPorcentaje, 
  required super.precioPorMinuto, 
  super.enUso, 
  required this.velocidadMaxima});

  @override
  double calcularCosteReserva(int minutos, {bool esVIP = false}) {
    double coste = minutos * this.precioPorMinuto;
    if(esVIP){
      coste *= 0.90;
    }
    return coste;
  }

  @override
    String toString() {
        return "$id";
    }
}