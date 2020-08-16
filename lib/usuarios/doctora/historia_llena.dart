import 'package:flutter/material.dart';
import 'package:saes/ingresar/login_screen.dart';
import 'package:saes/operaciones/db_historial.dart';
import 'package:saes/operaciones/db_operations.dart';
import 'package:saes/usuarios/historia/datosHistoria.dart';

class HistoriaLlena extends StatelessWidget {
  final Historia historia;
  HistoriaLlena(this.historia);

  //C O N T R O L A D O R E S

  final formkey = new GlobalKey<FormState>();
  final formkey1 = new GlobalKey<FormState>();
  final formkey2 = new GlobalKey<FormState>();
  final formkey3 = new GlobalKey<FormState>();
  final formkey4 = new GlobalKey<FormState>();
  final formkey5 = new GlobalKey<FormState>();
  final formkey6 = new GlobalKey<FormState>();
  final formkey7 = new GlobalKey<FormState>();
  final formkey8 = new GlobalKey<FormState>();
  final formkey9 = new GlobalKey<FormState>();
  final formkey10 = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: .0,
        leading: Image.asset('assets/saes2.png'),
        title:
            Text('HISTORIA CLINICA', style: TextStyle(color: Colors.grey[600])),
      ),
      body: ListView(
        children: <Widget>[
          _datosPersonales(Colors.transparent),
          _heredofamiliares(Colors.transparent),
          _personalesNoPatologicos(Colors.transparent),
          _antecedentesQuirurgicos(Colors.transparent),
          _antecedentesAlergicos(Colors.transparent),
          _antecedentesTraumaticos(Colors.transparent),
          _antecedentesTransfuncionales(Colors.transparent),
          _enfermedades(Colors.transparent),
          _antecedentesGinecobstetricos(Colors.transparent),
          _tratamientoActual(Colors.transparent),
          _contactos(Colors.transparent),
          SizedBox(height: 40),
        ],
      ),
    );
  }

//TARJETA DE DATOS PERSONALES
  Widget _datosPersonales(Color color) {
    // final form = GlobalKey<FormState>();
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Datos personales'),
                centerTitle: true,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Fecha Nacimiento'),
                      subtitle: Text('${historia.fecha_nac}'),
                      leading: Icon(Icons.important_devices),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Edad'),
                      subtitle: Text('${historia.edad}'),
                      leading: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('Número de Seguro Social'),
                subtitle: Text('${historia.nss}'),
                leading: Icon(Icons.list),
              ),
              ListTile(
                title: Text('Lugar de residencia'),
                subtitle: Text('${historia.lugar_residencia}'),
                leading: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO UNO ANTECEDENTES HEREDOFAMILIARES
  Widget _heredofamiliares(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey1,
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
              Text(''),
              Text(
                  'ESCRIBE SI O NO SEGÚN LAS ENFERMEDADES QUE HAYAN PADECIDO O PADEZCAN ALGUNOS DE LOS FAMILIARES DIRECTOS:',
                  style: TextStyle(color: Colors.black)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('E. Cardíacas'),
                        subtitle: Text('${historia.e_cardicas}'),
                        leading: Icon(Icons.label_important)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('Hipertensión'),
                        subtitle: Text('${historia.hipertension}'),
                        leading: Icon(Icons.label_important)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('Cáncer'),
                        subtitle: Text('${historia.cancer}'),
                        leading: Icon(Icons.label_important)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('E. Mentales'),
                        subtitle: Text('${historia.e_mentales}'),
                        leading: Icon(Icons.label_important)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('Diabetes'),
                        subtitle: Text('${historia.diabetes}'),
                        leading: Icon(Icons.label_important)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('Alergias'),
                        subtitle: Text('${historia.e_alergicas}'),
                        leading: Icon(Icons.label_important)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('Tuberculosis'),
                        subtitle: Text('${historia.tuberculosis}'),
                        leading: Icon(Icons.label_important)),
                  ),
                ],
              ),
              Text(''),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO DOS PERSONALES NO PATOLOGICOS
Widget _personalesNoPatologicos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey2,
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
              ListTile(
                  title: Text('Vacunas recientes'),
                  subtitle: Text('${historia.vacunas_recientes}'),
                  leading: Icon(Icons.assignment)),
              ListTile(
                  title: Text('¿Prácticas deporte?'),
                  subtitle: Text('${historia.practicas_deporte}'),
                  leading: Icon(Icons.label_outline)),
              ListTile(
                  title: Text('¿Qué deporte prácticas?'),
                  subtitle: Text('${historia.cual_deporte}'),
                  leading: Icon(Icons.supervisor_account)),
              ListTile(
                  title: Text('Veces a la semana'),
                  subtitle: Text('${historia.cuantas_veces_deporte}'),
                  leading: Icon(Icons.view_week)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('¿Fumas?'),
                        subtitle: Text('${historia.fumas}'),
                        leading: Icon(Icons.smoke_free)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('Edad inicio'),
                        subtitle: Text('${historia.edad_inicio_f}'),
                        leading: Icon(Icons.calendar_today)),
                  ),
                ],
              ),
              ListTile(
                  title: Text('¿Cuántos cigarros consume a la semana?'),
                  subtitle: Text('${historia.cigarros_a_la_semana}'),
                  leading: Icon(Icons.calendar_today)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('¿Consumes alcohol?'),
                        subtitle: Text('${historia.bebidas_alcoholicas}'),
                        leading: Icon(Icons.close)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('Edad Inicio'),
                        subtitle: Text('${historia.edad_inicio_a}'),
                        leading: Icon(Icons.calendar_view_day)),
                  ),
                ],
              ),
              ListTile(
                  title: Text('Cantidad de alcohol consumido a la semana'),
                  subtitle: Text('${historia.cantidad_por_semana}'),
                  leading: Icon(Icons.high_quality)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                        title: Text('¿Consume drogas?'),
                        subtitle: Text('${historia.drogas}'),
                        leading: Icon(Icons.transit_enterexit)),
                  ),
                  Expanded(
                    child: ListTile(
                        title: Text('Edad inicio'),
                        subtitle: Text('${historia.edad_inicio_d}'),
                        leading: Icon(Icons.calendar_today)),
                  ),
                ],
              ),
              ListTile(
                  title: Text('¿Cuántas veces a la semana lo consumes?'),
                  subtitle: Text('${historia.cuantas_veces_d}'),
                  leading: Icon(Icons.transit_enterexit)),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO TRES ANTECEDENTES QUIRURGICOS
  Widget _antecedentesQuirurgicos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey3,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('¿Cirugías?'),
                      subtitle: Text('${historia.cirujia}'),
                      leading: Icon(Icons.subdirectory_arrow_right),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Fecha cirugía'),
                      subtitle: Text('${historia.fecha_cirujia}'),
                      leading: Icon(Icons.date_range),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('Tipo de cirugía'),
                subtitle: Text('${historia.tipo_cirujia}'),
                leading: Icon(Icons.remove),
              ),
              ListTile(
                title: Text('Institución en la que se realizó'),
                subtitle: Text('${historia.institucion}'),
                leading: Icon(Icons.local_hospital),
              ),
            ],
          ),
        ),
      ),
    ));
  }

//TARJETA NUMERO CUATRO ANTECEDENTES ALERGICOS
  Widget _antecedentesAlergicos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey4,
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
              ListTile(
                title: Text('¿Alergias?'),
                subtitle: Text('${historia.alergias}'),
                leading: Icon(Icons.accessibility_new),
              ),
              ListTile(
                title: Text('¿A qué medicamento es alergico?'),
                subtitle: Text('${historia.medicamentos}'),
                leading: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO CINCO ANTECEDENTES TRAUMATICOS
  Widget _antecedentesTraumaticos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey5,
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
              ListTile(
                title: Text('¿Accidentes?'),
                subtitle: Text('${historia.accidente}'),
                leading: Icon(Icons.category),
              ),
              ListTile(
                title: Text('¿Hubo secuelas?'),
                subtitle: Text('${historia.secuelas_accidente}'),
                leading: Icon(Icons.select_all),
              ),
              ListTile(
                title: Text('¿Fracturas?'),
                subtitle: Text('${historia.fracturas}'),
                leading: Icon(Icons.all_inclusive),
              ),
              ListTile(
                title: Text('¿Complicaciones?'),
                subtitle: Text('${historia.complicaciones}'),
                leading: Icon(Icons.settings_input_component),
              ),
              ListTile(
                title: Text('¿Cuál fue dicha complicación?'),
                subtitle: Text('${historia.cual_complicacion}'),
                leading: Icon(Icons.save_alt),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO SEIS ANTECEDENTES TRANSFUNCIOMALES
  Widget _antecedentesTransfuncionales(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes transfuncionales'),
                centerTitle: true,
              ),
              ListTile(
                title: Text('¿Transfunciones?'),
                subtitle: Text('${historia.transfuncion_sanguinea}'),
                leading: Icon(Icons.straighten),
              ),
              ListTile(
                title: Text('Fecha de transfuncion'),
                subtitle: Text('${historia.fecha_transfucion}'),
                leading: Icon(Icons.insert_invitation),
              ),
              ListTile(
                title: Text('Motivo de transfuncion'),
                subtitle: Text('${historia.motivo}'),
                leading: Icon(Icons.new_releases),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO SIETE ENFERMEDADES
  Widget _enfermedades(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey7,
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
              Text(''),
              Text(
                  'ESCRIBE SI O NO SEGÚN LAS ENFERMEDADES QUE PADECES O HAS PADECIDO:'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Varicela'),
                      subtitle: Text('${historia.varicela}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Tosferina'),
                      subtitle: Text('${historia.tosferina}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Sarampeon'),
                      subtitle: Text('${historia.sarampion}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Rubeola'),
                      subtitle: Text('${historia.rubeola}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Sinusitis'),
                      subtitle: Text('${historia.sinusitis}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Paperas'),
                      subtitle: Text('${historia.paperas}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Hepatitis'),
                      subtitle: Text('${historia.hepatitis}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Tifoidea'),
                      subtitle: Text('${historia.tifoidea}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Fiebre'),
                      subtitle: Text('${historia.fiebre_reumatica}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Convulciones'),
                      subtitle: Text('${historia.convulciones}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Parasitosis'),
                      subtitle: Text('${historia.parasitos}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Diabetes'),
                      subtitle: Text('${historia.diabetes}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Hipertension'),
                      subtitle: Text('${historia.hipertension}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Anemia'),
                      subtitle: Text('${historia.anemia}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('E. cardiacas'),
                      subtitle: Text('${historia.enf_cardiacas}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('E. renales'),
                      subtitle: Text('${historia.enf_renales}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO SIETE ANTECEDENTES GINECOBSTETRICOS
  Widget _antecedentesGinecobstetricos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Antecedentes ginecobstetricos'),
                centerTitle: true,
              ),
              Text(''),
              Text('EXCLUSIVO SEXO FEMENINO', textAlign: TextAlign.center),
              ListTile(
                title: Text('Primer periodo'),
                subtitle: Text('${historia.edad_de_primer_periodo}'),
                leading: Icon(Icons.label_outline),
              ),
              ListTile(
                title: Text('¿Periodo regular?'),
                subtitle: Text('${historia.periodo_regular}'),
                leading: Icon(Icons.graphic_eq),
              ),
              ListTile(
                title: Text('¿Cuánto dura?'),
                subtitle: Text('${historia.dias_de_duracion}'),
                leading: Icon(Icons.timer),
              ),
              ListTile(
                title: Text('Cada cuantos días'),
                subtitle: Text('${historia.cada_cuantos_dias}'),
                leading: Icon(Icons.timeline),
              ),
              ListTile(
                title: Text('¿Embarazos?'),
                subtitle: Text('${historia.embarazos}'),
                leading: Icon(Icons.pregnant_woman),
              ),
              ListTile(
                title: Text('¿Cuántas veces?'),
                subtitle: Text('${historia.cuantas_veces_emb}'),
                leading: Icon(Icons.format_list_numbered),
              ),
              Text(''),
              Text(''),
              Text(
                  'INGRESE SI O NO, EN DADO CASO DE HABER PASADO POR UNO DE LOS SIGUIENTES PROCESOS:'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Parto normal'),
                      subtitle: Text('${historia.parto}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Cesárea'),
                      subtitle: Text('${historia.cesarea}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Aborto'),
                      subtitle: Text('${historia.aborto}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Legrado'),
                      subtitle: Text('${historia.legrado}'),
                      leading: Icon(Icons.label_important),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('¿Tiene algún método de planificación?'),
                subtitle: Text('${historia.metodo_de_planificacion}'),
                leading: Icon(Icons.open_with),
              ),
              ListTile(
                title: Text('¿Cuál es ese método?'),
                subtitle: Text('${historia.cual_metodo}'),
                leading: Icon(Icons.clear_all),
              ),
              /*Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 0),
                      child: TextFormField(
                        controller: papanicolao,
                        //validator: (val) =>
                        //  val.contains('@') ? null : 'Email is invalid',
                        decoration: InputDecoration(
                          labelText: '¿Papanicolau?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.crop_landscape),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 0),
                      child: TextFormField(
                        controller: tiempo_de_hacerlo,
                        //validator: (val) =>
                        //  val.contains('@') ? null : 'Email is invalid',
                        decoration: InputDecoration(
                          labelText: '¿Hace cuánto?',
                          hintText: 'Ingrese tiempo',
                          icon: Icon(Icons.insert_invitation),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/
            ],
          ),
        ),
      ),
    ));
  }

  //TARJETA NUMERO OCHO TRATAMIENTO ACTUAL
  Widget _tratamientoActual(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey9,
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
              ListTile(
                title: Text('Descripción de tratamiento actual'),
                subtitle: Text('${historia.descripcion_tratamiento}'),
                leading: Icon(Icons.description),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  //APARTADO PARA CONTACTOS DEL ALUMNO
  Widget _contactos(Color color) {
    return InkWell(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8),
        child: Form(
          key: formkey10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.indigo,
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text('Datos de contacto'),
                centerTitle: true,
              ),
              Text(''),
              Text('DATOS DEL PRIMER CONTACTO:', textAlign: TextAlign.start),
              ListTile(
                title: Text('Nombre completo'),
                subtitle: Text('${historia.nombre1}'),
                leading: Icon(Icons.person_add),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Parentesco'),
                      subtitle: Text('${historia.parentesco1}'),
                      leading: Icon(Icons.present_to_all),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Teléfono'),
                      subtitle: Text('${historia.telefono1}'),
                      leading: Icon(Icons.phone),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('Dirección'),
                subtitle: Text('${historia.direccion1}'),
                leading: Icon(Icons.home),
              ),
              Text(''),
              Text('DATOS DEL SEGUNDO CONTACTO:', textAlign: TextAlign.start),
              ListTile(
                title: Text('Nombre completo'),
                subtitle: Text('${historia.nombre2}'),
                leading: Icon(Icons.person_add),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      title: Text('Parentesco'),
                      subtitle: Text('${historia.parentesco2}'),
                      leading: Icon(Icons.present_to_all),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Teléfono'),
                      subtitle: Text('${historia.telefono2}'),
                      leading: Icon(Icons.phone),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Text('Dirección'),
                subtitle: Text('${historia.direccion2}'),
                leading: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}