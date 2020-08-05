import 'dart:async';

class Registrar {
  String cve_persona;
  String matricula;
  String nombre;
  String ape_pat;
  String ape_mat;
  String email;
  String carrera;
  String grupo;
  String telefono;
  String sexo;
  String contrasena;
  String usuario;
  String foto;

  Registrar(
      {this.cve_persona,
      this.matricula,
      this.nombre,
      this.ape_pat,
      this.ape_mat,
      this.email,
      this.carrera,
      this.grupo,
      this.telefono,
      this.sexo,
      this.contrasena,
      this.usuario,
      this.foto});

  //Patrones de diseño, ventajas de regresar un objeto
  factory Registrar.fromJson(Map<String, dynamic> json) {
    return Registrar(
        cve_persona: json['cve_persona'] as String,
        matricula: json['matricula'] as String,
        nombre: json['nombre'] as String,
        ape_pat: json['ape_pat'] as String,
        ape_mat: json['ape_mat'] as String,
        email: json['email'] as String,
        carrera: json['carrera'] as String,
        grupo: json['grupo'] as String,
        telefono: json['telefono'] as String,
        sexo: json['sexo'] as String,
        contrasena: json['contrasena'] as String,
        usuario: json['usuario'] as String,
        foto: json['foto'] as String);
  }
}
