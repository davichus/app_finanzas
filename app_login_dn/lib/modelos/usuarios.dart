class Usuario {
  String idUsuario;
  String cedulaUsuario;
  String nombresUsuario;
  String apellidosUsuario;
  String correoUsuario;
  String nomloginUsuario;
  String contraseniaUsario;
  String idRol;

  Usuario({
    required this.idUsuario,
    required this.cedulaUsuario,
    required this.nombresUsuario,
    required this.apellidosUsuario,
    required this.correoUsuario,
    required this.nomloginUsuario,
    required this.contraseniaUsario,
    required this.idRol,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      idUsuario: json['idUsuario'],
      cedulaUsuario: json['cedulaUsuario'],
      nombresUsuario: json['nombresUsuario'],
      apellidosUsuario: json['apellidosUsuario'],
      correoUsuario: json['correoUsuario'],
      nomloginUsuario: json['nomloginUsuario'],
      contraseniaUsario: json['contraseniaUsario'],
      idRol: json['idRol'],
    );
  }
}