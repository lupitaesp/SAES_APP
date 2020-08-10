import 'package:flutter/material.dart';

class HistoriaClinica extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<HistoriaClinica> {
  //C O N T R O L A D O R E S

    /*INFORMACION PERONAL*/
    TextEditingController fecha_nac;          // L I S T O
    TextEditingController edad;               // L I S T O 
    TextEditingController nss;                // L I S T O
    TextEditingController lugar_residencia;   // L I S T O

  /*ANTECEDENTES HEREDOFAMILIARES*/
    TextEditingController e_cardicas;         // L I S T O
    TextEditingController hipertension;       // L I S T O
    TextEditingController convulsiones;       // L I S T O
    TextEditingController cancer;             // L I S T O
    TextEditingController e_mentales;         // L I S T O
    TextEditingController diabetes;           // L I S T O
    TextEditingController e_alergicas;        // L I S T O
    TextEditingController tuberculosis;       // L I S T O

  /*PERSONALES NO PATOLOGICOS*/
    TextEditingController vacunas_recientes;    // L I S T O
    TextEditingController practicas_deporte;    // L I S T O
    TextEditingController cual_deporte;         // L I S T O
    TextEditingController cuantas_veces_deporte;// L I S T O
    TextEditingController fumas;                // L I S T O
    TextEditingController edad_inicio_f;        // L I S T O
    TextEditingController cigarros_a_la_semana; // L I S T O
    TextEditingController bebidas_alcoholicas;  // L I S T O
    TextEditingController edad_inicio_a;        // L I S T O
    TextEditingController cantidad_por_semana;  // L I S T O
    TextEditingController drogas;               // L I S T O
    TextEditingController edad_inicio_d;        // L I S T O
    TextEditingController cuantas_veces_d;      // L I S T O

  /*ANTECEDENTES QUIRURGICOS*/
    TextEditingController cirujia;              // L I S T O
    TextEditingController fecha_cirujia;        // L I S T O
    TextEditingController tipo_cirujia;         // L I S T O
    TextEditingController institucion;          // L I S T O

  /*ANTECEDENTES ALERGICOS*/
    TextEditingController alergias;             // L I S T O
    TextEditingController medicamentos;         // L I S T O

  /*ANTECEDENTES TRAUMATICOS*/
    TextEditingController accidente;            // L I S T O
    TextEditingController secuelas_accidente;   // L I S T O
    TextEditingController fracturas;            // L I S T O
    TextEditingController complicaciones;       // L I S T O
    TextEditingController cual_complicacion;    // L I S T O

  /*ANTECEDENTES TRANSFUNCIONALES*/
    TextEditingController transfuncion_sanguinea; // L I S T O
    TextEditingController fecha_transfucion;      // L I S T O
    TextEditingController motivo;

  /*ENFERMEDADES*/
    TextEditingController varicela;               // L I S T O
    TextEditingController tosferina;              // L I S T O
    TextEditingController sarampion;              // L I S T O
    TextEditingController rubeola;                // L I S T O
    TextEditingController sinusitis;              // L I S T O
    TextEditingController paperas;                // L I S T O
    TextEditingController hepatitis;              // L I S T O
    TextEditingController tifoidea;               // L I S T O
    TextEditingController fiebre_reumatica;       // L I S T O
    TextEditingController convulciones;           // L I S T O
    TextEditingController parasitos;              // L I S T O
    TextEditingController diabetis_mellitus;      // L I S T O
    TextEditingController hipertension_arterial;  // L I S T O
    TextEditingController anemia;                 // L I S T O
    TextEditingController enf_cardiacas;          // L I S T O
    TextEditingController enf_renales;            // L I S T O

  /*ANTECEDENTES GINECOBSTETRICOS*/
    TextEditingController edad_de_primer_periodo;   // L I S T O
    TextEditingController periodo_regular;        // L I S T O
    TextEditingController dias_de_duracion;       // L I S T O
    TextEditingController cada_cuantos_dias;      // L I S T O  
    TextEditingController embarazos;              // L I S T O
    TextEditingController cuantas_veces_emb;      // L I S T O
    TextEditingController parto;                  // L I S T O
    TextEditingController cesarea;                // L I S T O
    TextEditingController aborto;                 // L I S T O    
    TextEditingController legrado;                // L I S T O
    TextEditingController metodo_de_planificacion;  // L I S T O  
    TextEditingController cual_metodo;            // L I S T O
    TextEditingController papanicolao;            // L I S T O
    TextEditingController tiempo_de_hacerlo;      // L I S T O

  /*TRATAMIENTO*/
    TextEditingController descripcion_tratamiento;  // L I S T O

  /*CONTACTOS*/
    TextEditingController nombre1;              // L I S T O
    TextEditingController parentesco1;          // L I S T O
    TextEditingController direccion1;           // L I S T O  
    TextEditingController telefono1;            // L I S T O
    TextEditingController nombre2;              // L I S T O
    TextEditingController parentesco2;          // L I S T O
    TextEditingController direccion2;           // L I S T O
    TextEditingController telefono2;            // L I S T O
    
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
        ],
      )
    );
  }  
}

//TARJETA DE DATOS PERSONALES
Widget _datosPersonales(Color color) {
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
                title: Text('Datos personales'),
                centerTitle: true,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 11 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Fecha de Nacimiento',
                          hintText: '0000/00/00',
                          icon: Icon(Icons.date_range),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Edad',
                          hintText: 'Edad',
                          icon: Icon(Icons.person),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                   child: TextFormField(
                    validator: (val) =>
                      val.length > 11 ? null : 'Respuesta inválida',  /*P E N D I E N T E  C A N T I D A D  D E  N S S*/ 
                        decoration: InputDecoration(
                          labelText: 'Número de Seguro Social',
                          hintText: 'Deben ser 10 dígitos',
                          icon: Icon(Icons.list),
                          isDense: true,
                        ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top:0),
                   child: TextFormField(
                    validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',  
                        decoration: InputDecoration(
                          labelText: 'Lugar de residencia',
                          hintText: 'Lugar de residencia',
                          icon: Icon(Icons.home),
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
              Text(''),
              Text('ESCRIBE SI O NO SEGÚN LAS ENFERMEDADES QUE HAYAN PADECIDO O PADEZCAN ALGUNOS DE LOS FAMILIARES DIRECTOS:', 
                style: TextStyle(color: Colors.black)),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                      validator: (val) =>
                          val.length > 3 ? null : 'Respuesta inválida',
                      decoration: InputDecoration(
                        labelText: 'E. Cardícas',
                        hintText: 'E. Cardícas',
                        icon: Icon(Icons.label_important),
                        isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Hipertensión',
                          hintText: 'Hipertensión',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Convulsiones',
                          hintText: 'Convulsiones',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Cáncer',
                          hintText: 'Cáncer',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'E. mentales',
                          hintText: 'E. mentales',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Diabetes',
                          hintText: 'Diabetes',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Alergias',
                          hintText: 'Alergias',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Tuberculosis',
                          hintText: 'Tuberculosis',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(''),
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
                      val.length < 5 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Vacunas recientes',
                    hintText: 'Ingrese ninguna en caso de no tener',
                    icon: Icon(Icons.assignment),
                    isDense: true,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Prácticas deporte?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.label_outline),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 5 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Qué deporte prácticas?',
                          hintText: '¿Qué deporte prácticas?',
                          icon: Icon(Icons.supervisor_account),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                  validator: (val) =>
                      val.length > 2 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Veces a la semana',
                          hintText: 'Ingrese cantidad semanal',
                          icon: Icon(Icons.view_week),
                          isDense: true,
                        ),
                  ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Fumas?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.smoke_free),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Edad inicio',
                          hintText: 'Edad de inicio',
                          icon: Icon(Icons.calendar_today),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 4 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: '¿Cuántos cigarros consume a la semana?',
                    hintText: 'En caso de consumirlos',
                    icon: Icon(Icons.navigate_next),
                    isDense: true,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Consumes alcohol?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.close),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Edad inicio',
                          hintText: 'Ingrese edad inicio',
                          icon: Icon(Icons.calendar_view_day),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 4 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Cantidad de alcohol consumido a la semana',
                    hintText: 'Cantidad de alcohol consumido a la semana',
                    icon: Icon(Icons.high_quality),
                    isDense: true,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Consume drogas?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.transit_enterexit),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Edad inicio',
                          hintText: 'Edad de inicio',
                          icon: Icon(Icons.calendar_today),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.length > 4 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: '¿Cuántas veces a la semana lo consumes?',
                    hintText: 'Ingrese la cantidad en dado caso que sea cierto',
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Cirugías?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.subdirectory_arrow_right),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Fecha de la cirugía',
                          hintText: '0000/00/00',
                          icon: Icon(Icons.date_range),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Tipo de cirugía',
                    hintText: 'Tipo de cirugía',
                    icon: Icon(Icons.remove),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Institución en la que se realizó',
                    hintText: 'Institución en la que se realizó',
                    icon: Icon(Icons.local_hospital),
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
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: '¿Alergias?',
                    hintText: 'Si / No',
                    icon: Icon(Icons.accessibility_new),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: '¿A qué medicamento es alergico?',
                    hintText: '¿A qué medicamento es alergico?',
                    icon: Icon(Icons.add),
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Accidentes?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.category),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Hubo secuelas?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.select_all),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Fracturas?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.all_inclusive),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Complicaciones?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.settings_input_component),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: '¿Cuál fue dicha complicación?',
                    hintText: '¿Cuál fue dicha complicación?',
                    icon: Icon(Icons.save_alt),
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
              Row(
                children: <Widget>[
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Transfunciones?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.straighten),
                          isDense: true,
                        ),
                      ),
                    ), 
                  ),
                  Expanded(
                    child:Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 12 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Fecha de transfuncion',
                          hintText: '0000/00/00',
                          icon: Icon(Icons.insert_invitation),
                          isDense: true,
                        ),
                      ),
                    ), 
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 5 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Motivo de transfuncion',
                    hintText: 'Motivo de transfuncion',
                    icon: Icon(Icons.new_releases),
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
              Text(''),
              Text('ESCRIBE SI O NO SEGÚN LAS ENFERMEDADES QUE PADECES O HAS PADECIDO:'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Varicela',
                          hintText: 'Varicela',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Tosferina',
                          hintText: 'Tosferina',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Sarampeon',
                          hintText: 'Sarampeon',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Rubeola',
                          hintText: 'Rubeola',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Sinusitis',
                          hintText: 'Sinusitis',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Paperas',
                          hintText: 'Paperas',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Hepatitis',
                          hintText: 'Hepatitis',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Tifoidea',
                          hintText: 'Tifoidea',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Fiebre',
                          hintText: 'Fiebre',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Convulsiones',
                          hintText: 'Convulsiones',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Parasitosis',
                          hintText: 'Parasitosis',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Diabetes',
                          hintText: 'Diabetes',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Hipertension',
                          hintText: 'Hipertension',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Anemia',
                          hintText: 'Anemia',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'E. cardiacas',
                          hintText: 'E.cardiacas',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'E. renales',
                          hintText: 'E. renales',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                centerTitle: true,
              ),
              Text(''),
              Text('EXCLUSIVO SEXO FEMENINO', textAlign: TextAlign.center),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Primer periodo',
                          hintText: 'Ingresa la edad',
                          icon: Icon(Icons.label_outline),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: '¿Periodo regular?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.graphic_eq),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: '¿Cuánto dura?',
                          hintText: 'Ingrese duración',
                          icon: Icon(Icons.timer),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: 'Cada cuantos días',
                          hintText: 'Cada cuantos días',
                          icon: Icon(Icons.timeline),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: '¿Embarazos?',
                          hintText: 'Si / No',
                          icon: Icon(Icons.pregnant_woman),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: '¿Cuántas veces?',
                          hintText: 'Ingrese número',
                          icon: Icon(Icons.format_list_numbered),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(''),
              Text(''),
              Text('INGRESE SI O NO, EN DADO CASO DE HABER PASADO POR UNO DE LOS SIGUIENTES PROCESOS:'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: 'Parto normal',
                          hintText: 'Parto normal',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: 'Cesárea',
                          hintText: 'Cesárea',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.length > 3 ? null : 'Full name is invalid',
                        decoration: InputDecoration(
                          labelText: 'Aborto',
                          hintText: 'Aborto',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        //validator: (val) =>
                          //  val.contains('@') ? null : 'Email is invalid',
                        decoration: InputDecoration(
                          labelText: 'Legrado',
                          hintText: 'Legrado',
                          icon: Icon(Icons.label_important),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
                  child: TextFormField(
                    //validator: (val) =>
                      //  val.contains('@') ? null : 'Email is invalid',
                    decoration: InputDecoration(
                     labelText: '¿Tiene algún método de planificación?',
                     hintText: 'Si / No',
                       icon: Icon(Icons.open_with),
                      isDense: true,
                ),
               ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
                  child: TextFormField(
                    //validator: (val) =>
                      //  val.contains('@') ? null : 'Email is invalid',
                    decoration: InputDecoration(
                     labelText: '¿Cuál es ese método?',
                     hintText: 'Ingreselo aquí',
                       icon: Icon(Icons.clear_all),
                      isDense: true,
                ),
               ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
                        child: TextFormField(
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
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
                        child: TextFormField(
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
              ),
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
                  //validator: (val) =>
                    //  val.contains('@') ? null : 'Email is invalid',
                  decoration: InputDecoration(
                    labelText: 'Descripción de tratamiento actual',
                    hintText: 'Descripción de tratamiento actual',
                    icon: Icon(Icons.description),
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

//APARTADO PARA CONTACTOS DEL ALUMNO
Widget _contactos(Color color) {
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
                title: Text('Datos de contacto'),
                centerTitle: true,
              ),
              Text(''),
              Text('DATOS DEL PRIMER CONTACTO:', textAlign: TextAlign.start),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    hintText: 'Ingrese nombre completo',
                    icon: Icon(Icons.person_add),
                    isDense: true,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Parentesco',
                          hintText: 'Parentesco',
                          icon: Icon(Icons.present_to_all),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Teléfono',
                          hintText: 'Teléfono',
                          icon: Icon(Icons.phone),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: TextFormField(
                    validator: (val) =>
                      val.length < 10 ? null : 'Respuesta inválida',
                      decoration: InputDecoration(
                          labelText: 'Dirección',
                          hintText: 'Dirección',
                          icon: Icon(Icons.home),
                          isDense: true,
                  ),
                ),
              ),
              Text(''),
              Text('DATOS DEL SEGUNDO CONTACTO:', textAlign: TextAlign.start),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: TextFormField(
                  validator: (val) =>
                      val.length < 3 ? null : 'Respuesta inválida',
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    hintText: 'Ingrese nombre completo',
                    icon: Icon(Icons.person_add),
                    isDense: true,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Parentesco',
                          hintText: 'Parentesco',
                          icon: Icon(Icons.present_to_all),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 3 ? null : 'Respuesta inválida',
                        decoration: InputDecoration(
                          labelText: 'Teléfono',
                          hintText: 'Teléfono',
                          icon: Icon(Icons.phone),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: TextFormField(
                    validator: (val) =>
                      val.length < 10 ? null : 'Respuesta inválida',
                      decoration: InputDecoration(
                          labelText: 'Dirección',
                          hintText: 'Dirección',
                          icon: Icon(Icons.home),
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