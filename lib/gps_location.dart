mixin GPSLocation{
  double latitud = 0.0;
  double longitud = 0.0;

  String actualizarUbicacion(double lat, double long){
    latitud = lat;
    longitud = long;
    return "Se ha actualizado la ubicación";
  }

  (double lat, double long) obtenerCoordenadas(){
    return (latitud, longitud);
  }
}