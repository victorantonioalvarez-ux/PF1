import '../lib/models/vehiculo.dart';
import '../lib/models/user.dart';
import '../lib/models/patinete.dart';
import '../lib/models/coche.dart';

void main(){

  final patinete1 = Patinete(id: "P1", bateriaPorcentaje: 85, precioPorMinuto: 0.15, velocidadMaxima: 25);
  final patinete2 = Patinete(id: "P2", bateriaPorcentaje: 45, precioPorMinuto: 0.15, velocidadMaxima: 20);
  final patinete3 = Patinete(id: "P3", bateriaPorcentaje: 15, precioPorMinuto: 0.15, velocidadMaxima: 25);
  final coche1 = Coche(id: "C1", bateriaPorcentaje: 90, precioPorMinuto: 0.35, plazas: 4, requiereLicencia: true);
  final coche2 = Coche(id: "C2", bateriaPorcentaje: 60, precioPorMinuto: 0.35, plazas: 5, requiereLicencia: true);

  List<Vehiculo> flota = [patinete1, patinete2, patinete3, coche1, coche2];

  flota[0].actualizarUbicacion(41.3851, 2.1735);
  flota[1].actualizarUbicacion(41.3989, 2.1600);
  flota[2].actualizarUbicacion(41.4465, 2.1658);
  flota[3].actualizarUbicacion(41.3856, 2.1852);
  flota[4].actualizarUbicacion(41.3700, 2.1806);

  flota.sort((a,b)=> b.bateriaPorcentaje.compareTo(a.bateriaPorcentaje));

  final conMasBateria = flota.first;

  print("El vehiculo con mas bateria es el $conMasBateria con un ${conMasBateria.bateriaPorcentaje}%");

  List<Vehiculo> disponibles = flota.where((v) => v.bateriaPorcentaje > 20 && !v.enUso).toList();
  print("Vehiculos disponibles: ${disponibles.map((v) => v.id).toList()}");
  
  final usuario1 = User.nuevoUser(id: "U1", nombreCompleto: "Joan Cañellas", correo: "joan@gmail.cat");
  usuario1.esVIP = true;

  usuario1.recargarSaldo(15);

  double coste = patinete1.calcularCosteReserva(15, esVIP: usuario1.esVIP);
  print("coste de reserva del patinerte $patinete1 durante 15 minutos (Usuario VIP): $coste €");

  patinete1.actualizarUbicacion(41.3923, 2.1778);

  var (lat, long) = patinete1.obtenerCoordenadas();

  print("El patinete $patinete1 se encuentra en las coordenadas: lat= $lat, long=$long");

  print("intento de recargar saldo negativo");

  try{
    usuario1.recargarSaldo(-10);
  }catch(e){
    print("$e");
  }

  print("Saldo del usuario $usuario1: ${usuario1.saldo} €");
}