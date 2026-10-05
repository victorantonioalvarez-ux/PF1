class User{
  final String _id;
  final String _nombreCompleto;
  double _saldo;
  String correo;
  bool esVIP;

  User.nuevoUser({required String id, required String nombreCompleto, required this.correo})
    : _id = id,
      _nombreCompleto = nombreCompleto,
      _saldo = 0.0,
      esVIP = false;

  User(this._id, this._nombreCompleto, this._saldo, this.correo, {this.esVIP = false});

  double get saldo{
    return this._saldo;
  }
  String get id{
    return this._id;
  }
  String get nombreCompleto{
    return this._nombreCompleto;
  }

  String recargarSaldo(double cantidad){
    if(cantidad <= 0){
      throw ArgumentError("La cantidad a recargar a de ser positiva");
    }
    _saldo += cantidad;
    return "Se ha recargado tu saldo";
  }
  @override
    String toString() {
        return "$id ($nombreCompleto)";
    }
}