import '../gps_location.dart';

abstract class Vehiculo with GPSLocation{
  String id;
  int bateriaPorcentaje;
  bool enUso;
  double precioPorMinuto;

  Vehiculo({required this.id, required this.bateriaPorcentaje, required this.precioPorMinuto, this.enUso = false});

  String estadoBateria(){
      switch (bateriaPorcentaje) {
      case >= 80 && <= 100:
        return "Alta";
      case >= 20 && <= 70:
        return "Media";
      case <20 && >=1:
        return "Crítica (Requiere Carga)";
      default:
        return "Porcentaje incorrecto";
    }
  }

  double calcularCosteReserva(int minutos);
}