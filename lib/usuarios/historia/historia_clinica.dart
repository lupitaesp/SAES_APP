import 'package:flutter/material.dart';

class HistoriaClinica extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<HistoriaClinica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: .0,
        leading: Image.asset('assets/saes2.png'),
        title: Text('HISTORIA CLINICA', style: TextStyle(color: Colors.grey[600])),
      ),
      body:
      ListView(
        children: <Widget>[
          _heredofamiliares(Colors.transparent),
          _personalesNoPatologicos(Colors.transparent),
          _antecedentesQuirurgicos(Colors.transparent),
          _antecedentesAlergicos(Colors.transparent),
          _antecedentesTraumaticos(Colors.transparent),
          _antecedentesTransfuncionales(Colors.transparent),
          _enfermedades(Colors.transparent),
          _antecedentesGinecobstetricos(Colors.transparent),
          _tratamientoActual(Colors.transparent)
        ],
      )
    );
  }  
}

//TARJETA NUMERO UNO ANTECEDENTES HEREDOFAMILIARES
Widget _heredofamiliares(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.green,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes heredofamiliares'),
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Enfermedades cardicas',
                    hintText: 'Enfermedades cardicas',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Hipertension',
                    hintText: 'Hipertension',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Convulsiones',
                    hintText: 'Convulsiones',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cancer',
                    hintText: 'Cancer',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Enfermedades mentales',
                    hintText: 'Enfermedades mentales',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Diabetes',
                    hintText: 'Diabetes',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Alergias',
                    hintText: 'Alergias',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Tuberculosis',
                    hintText: 'Tuberculosis',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
     )
    );
}

//TARJETA NUMERO DOS PERSONALES NO PATOLOGICOS
Widget _personalesNoPatologicos(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Personales no patologicos'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Vacunas recientes',
                    hintText: 'Vacunas recientes',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Deporte que practicas',
                    hintText: 'Deporte que practicas',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuantas veces a la semana',
                    hintText: 'Cuantas veces a la semana',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuando empezaste a fumar',
                    hintText: 'Cuando empezaste a fumar',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuantos cigarros a la semana',
                    hintText: 'Cuantos cigarros a la semana',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuando empezaste a beber alcohol',
                    hintText: 'Cuando empezaste a beber alcohol',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cantidad de alcohol consumido a la semana',
                    hintText: 'Cantidad de alcohol consumido a la semana',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuando comenzo a consumir drogas',
                    hintText: 'Cuando comenzo a consumir drogas',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuantas veces a la semana lo consumes',
                    hintText: 'Cuantas veces a la semana lo consumes',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO TRES ANTECEDENTES QUIRURGICOS
Widget _antecedentesQuirurgicos(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.green,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes quirurgicos'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Fecha de la cirujia',
                    hintText: 'Fecha de la cirujia',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Tipo de cirujia',
                    hintText: 'Tipo de cirujia',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Institución',
                    hintText: 'Institución',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO CUATRO ANTECEDENTES ALERGICOS
Widget _antecedentesAlergicos(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes alergicos'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'A que medicamento es alergico',
                    hintText: 'A que medicamento es alergico',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO CINCO ANTECEDENTES TRAUMATICOS
Widget _antecedentesTraumaticos(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.green,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes traumaticos'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Algún accidente que ameritó hospitalización',
                    hintText: 'Algún accidente que ameritó hospitalización',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO SEIS ANTECEDENTES TRANSFUNCIOMALES
Widget _antecedentesTransfuncionales(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes transfuncionales'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Fecha de transfuncion',
                    hintText: 'Fecha de transfuncion',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Motivo de transfuncion',
                    hintText: 'Motivo de transfuncion',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO SIETE ENFERMEDADES
Widget _enfermedades(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.green,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Enfermedades'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Varicela',
                    hintText: 'Varicela',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Tosferina',
                    hintText: 'Tosferina',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Sarampeon',
                    hintText: 'Sarampeon',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Rubeola',
                    hintText: 'Rubeola',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Sinusitis',
                    hintText: 'Sinusitis',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Paperas',
                    hintText: 'Paperas',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Hepatitis',
                    hintText: 'Hepatitis',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Tifoidea',
                    hintText: 'Tifoidea',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Fiebre',
                    hintText: 'Fiebre',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Convulsiones',
                    hintText: 'Convulsiones',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Parasitosis',
                    hintText: 'Parasitosis',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Diabetes',
                    hintText: 'Diabetes',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Hipertension',
                    hintText: 'Hipertension',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Anemia',
                    hintText: 'Anemia',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Enfermedades cardiacas',
                    hintText: 'Enfermedades cardiacas',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Enfermedades renales',
                    hintText: 'Enfermedades renales',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO SIETE ANTECEDENTES GINECOBSTETRICOS
Widget _antecedentesGinecobstetricos(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes ginecobstetricos'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Fecha de primer menstruación',
                    hintText: 'Fecha de primer menstruación',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cada cuantos días',
                    hintText: 'Cada cuantos días',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Duración',
                    hintText: 'Duración',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Cuantas veces te haz embarazado',
                    hintText: 'Cuantas veces te haz embarazado',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 3 ? null : 'Full name is invalid',
                  decoration: InputDecoration(
                    labelText: 'Metodo de planificación',
                    hintText: 'Metodo de planificación',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Hace cuanto se hizo papanicolau',
                    hintText: 'Hace cuanto se hizo papanicolau',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }

//TARJETA NUMERO OCHO TRATAMIENTO ACTUAL
Widget _tratamientoActual(Color color) {
  final form = GlobalKey<FormState>();
    return InkWell(
      child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.green,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Tratamiento actual'),
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Descripción de tratamiento actual',
                    hintText: 'Descripción de tratamiento actual',
                    icon: Icon(Icons.person),
                    isDense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
     )
    );
  }


// NUEVE TARJETAS PARA TODOS LOS CAMPOS