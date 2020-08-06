import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:convert';

import 'package:saes/operaciones/convertidor.dart';

class PerfilDoctora extends StatelessWidget {
  //static final String path = "lib/src/pages/profile/profile9.dart";
  //final Registrar registrar;
  //const Perfil({Key key, this.registrar}) : super(key: key);
  PerfilDoctora({this.nombre, this.ape_pat, this.ape_mat, this.email, this.telefono, this.foto});
  final String nombre;
  final String ape_pat;
  final String ape_mat;
  final String email;
  final String telefono;
  final String foto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              height: 380,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
            ),
          ),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/app/mundoutec.jpg"),
                    fit: BoxFit.cover),
              ),
              foregroundDecoration:
                  BoxDecoration(color: Colors.green.withOpacity(0.9)),
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 90),
              //_buildAvatar(Registrar.nombre),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                child: CircleAvatar(
                  radius: 78 ,
                  backgroundImage: Convertir.imageFromBase64sString('$foto').image,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$nombre'+" "+'$ape_pat'+" "+'$ape_mat',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 1.0),
              Container(
                height: 20,
                width: double.infinity,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 1.0, 16.0, 16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "Información personal",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(),
                            ListTile(
                              title: Text("Phone"),
                              subtitle: Text("$telefono"),
                              leading: Icon(Icons.phone),
                            ),
                             ListTile(
                              title: Text("Email"),
                              subtitle: Text("$email"),
                              leading: Icon(Icons.email),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ]));
  }

 
}