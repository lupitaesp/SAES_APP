import 'package:flutter/material.dart';
import 'package:saes/ingresar/login_screen.dart';
import 'package:saes/operaciones/db_historial.dart';
import 'package:saes/operaciones/db_operations.dart';

class HistoriaClinica extends StatefulWidget {
  String matricula;
  HistoriaClinica({this.matricula});
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<HistoriaClinica> {
  //C O N T R O L A D O R E S
  List<HistoriaClinica> _HistoriaClinica;
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
  /*INFORMACION PERONAL*/
  TextEditingController fecha_nac; // L I S T O
  TextEditingController edad; // L I S T O
  TextEditingController nss; // L I S T O
  TextEditingController lugar_residencia; // L I S T O

  /*ANTECEDENTES HEREDOFAMILIARES*/
  TextEditingController e_cardicas; // L I S T O
  TextEditingController hipertension; // L I S T O
  TextEditingController convulsiones; // L I S T O
  TextEditingController cancer; // L I S T O
  TextEditingController e_mentales; // L I S T O
  TextEditingController diabetes; // L I S T O
  TextEditingController e_alergicas; // L I S T O
  TextEditingController tuberculosis; // L I S T O

  /*PERSONALES NO PATOLOGICOS*/
  TextEditingController vacunas_recientes; // L I S T O
  TextEditingController practicas_deporte; // L I S T O
  TextEditingController cual_deporte; // L I S T O
  TextEditingController cuantas_veces_deporte; // L I S T O
  TextEditingController fumas; // L I S T O
  TextEditingController edad_inicio_f; // L I S T O
  TextEditingController cigarros_a_la_semana; // L I S T O
  TextEditingController bebidas_alcoholicas; // L I S T O
  TextEditingController edad_inicio_a; // L I S T O
  TextEditingController cantidad_por_semana; // L I S T O
  TextEditingController drogas; // L I S T O
  TextEditingController edad_inicio_d; // L I S T O
  TextEditingController cuantas_veces_d; // L I S T O

  /*ANTECEDENTES QUIRURGICOS*/
  TextEditingController cirujia; // L I S T O
  TextEditingController fecha_cirujia; // L I S T O
  TextEditingController tipo_cirujia; // L I S T O
  TextEditingController institucion; // L I S T O

  /*ANTECEDENTES ALERGICOS*/
  TextEditingController alergias; // L I S T O
  TextEditingController medicamentos; // L I S T O

  /*ANTECEDENTES TRAUMATICOS*/
  TextEditingController accidente; // L I S T O
  TextEditingController secuelas_accidente; // L I S T O
  TextEditingController fracturas; // L I S T O
  TextEditingController complicaciones; // L I S T O
  TextEditingController cual_complicacion; // L I S T O

  /*ANTECEDENTES TRANSFUNCIONALES*/
  TextEditingController transfuncion_sanguinea; // L I S T O
  TextEditingController fecha_transfucion; // L I S T O
  TextEditingController motivo;

  /*ENFERMEDADES*/
  TextEditingController varicela; // L I S T O
  TextEditingController tosferina; // L I S T O
  TextEditingController sarampion; // L I S T O
  TextEditingController rubeola; // L I S T O
  TextEditingController sinusitis; // L I S T O
  TextEditingController paperas; // L I S T O
  TextEditingController hepatitis; // L I S T O
  TextEditingController tifoidea; // L I S T O
  TextEditingController fiebre_reumatica; // L I S T O
  TextEditingController convulciones; // L I S T O
  TextEditingController parasitos; // L I S T O
  TextEditingController diabetis_mellitus; // L I S T O
  TextEditingController hipertension_arterial; // L I S T O
  TextEditingController anemia; // L I S T O
  TextEditingController enf_cardiacas; // L I S T O
  TextEditingController enf_renales; // L I S T O

  /*ANTECEDENTES GINECOBSTETRICOS*/
  TextEditingController edad_de_primer_periodo; // L I S T O
  TextEditingController periodo_regular; // L I S T O
  TextEditingController dias_de_duracion; // L I S T O
  TextEditingController cada_cuantos_dias; // L I S T O
  TextEditingController embarazos; // L I S T O
  TextEditingController cuantas_veces_emb; // L I S T O
  TextEditingController parto; // L I S T O
  TextEditingController cesarea; // L I S T O
  TextEditingController aborto; // L I S T O
  TextEditingController legrado; // L I S T O
  TextEditingController metodo_de_planificacion; // L I S T O
  TextEditingController cual_metodo; // L I S T O
  TextEditingController papanicolao; // L I S T O
  TextEditingController tiempo_de_hacerlo; // L I S T O

  /*TRATAMIENTO*/
  TextEditingController descripcion_tratamiento; // L I S T O

  /*CONTACTOS*/
  TextEditingController nombre1; // L I S T O
  TextEditingController parentesco1; // L I S T O
  TextEditingController direccion1; // L I S T O
  TextEditingController telefono1; // L I S T O
  TextEditingController nombre2; // L I S T O
  TextEditingController parentesco2; // L I S T O
  TextEditingController direccion2; // L I S T O
  TextEditingController telefono2; // L I S T O

  @override
  void initState() {
    super.initState();
    _HistoriaClinica = [];
    fecha_nac = TextEditingController();
    edad = TextEditingController();
    nss = TextEditingController();
    lugar_residencia = TextEditingController();

    /*ANTECEDENTES HEREDOFAMILIARES*/
    e_cardicas = TextEditingController();
    hipertension = TextEditingController();
    convulsiones = TextEditingController();
    cancer = TextEditingController();
    e_mentales = TextEditingController();
    diabetes = TextEditingController();
    e_alergicas = TextEditingController(); //aqui
    tuberculosis = TextEditingController();

    /*PERSONALES NO PATOLOGICOS*/
    vacunas_recientes = TextEditingController();
    practicas_deporte = TextEditingController();
    cual_deporte = TextEditingController();
    cuantas_veces_deporte = TextEditingController();
    fumas = TextEditingController();
    edad_inicio_f = TextEditingController();
    cigarros_a_la_semana = TextEditingController();
    bebidas_alcoholicas = TextEditingController();
    edad_inicio_a = TextEditingController();
    cantidad_por_semana = TextEditingController();
    drogas = TextEditingController();
    edad_inicio_d = TextEditingController();
    cuantas_veces_d = TextEditingController();

    /*ANTECEDENTES QUIRURGICOS*/
    cirujia = TextEditingController();
    fecha_cirujia = TextEditingController();
    tipo_cirujia = TextEditingController();
    institucion = TextEditingController();

    /*ANTECEDENTES ALERGICOS*/
    alergias = TextEditingController();
    medicamentos = TextEditingController();

    /*ANTECEDENTES TRAUMATICOS*/
    accidente = TextEditingController();
    secuelas_accidente = TextEditingController();
    fracturas = TextEditingController();
    complicaciones = TextEditingController();
    cual_complicacion = TextEditingController();

    /*ANTECEDENTES TRANSFUNCIONALES*/
    transfuncion_sanguinea = TextEditingController();
    fecha_transfucion = TextEditingController();
    motivo = TextEditingController();

    /*ENFERMEDADES*/
    varicela = TextEditingController();
    tosferina = TextEditingController();
    sarampion = TextEditingController();
    rubeola = TextEditingController();
    sinusitis = TextEditingController();
    paperas = TextEditingController();
    hepatitis = TextEditingController();
    tifoidea = TextEditingController();
    fiebre_reumatica = TextEditingController();
    convulciones = TextEditingController();
    parasitos = TextEditingController();
    diabetis_mellitus = TextEditingController();
    hipertension_arterial = TextEditingController(); //aqui
    anemia = TextEditingController();
    enf_cardiacas = TextEditingController(); //aqui
    enf_renales = TextEditingController();

    /*ANTECEDENTES GINECOBSTETRICOS*/
    edad_de_primer_periodo = TextEditingController();
    periodo_regular = TextEditingController();
    dias_de_duracion = TextEditingController();
    cada_cuantos_dias = TextEditingController();
    embarazos = TextEditingController();
    cuantas_veces_emb = TextEditingController();
    parto = TextEditingController();
    cesarea = TextEditingController();
    aborto = TextEditingController();
    legrado = TextEditingController();
    metodo_de_planificacion = TextEditingController();
    cual_metodo = TextEditingController();
    papanicolao = TextEditingController();
    tiempo_de_hacerlo = TextEditingController();

    /*TRATAMIENTO*/
    descripcion_tratamiento = TextEditingController();

    /*CONTACTOS*/
    nombre1 = TextEditingController();
    parentesco1 = TextEditingController();
    direccion1 = TextEditingController();
    telefono1 = TextEditingController();
    nombre2 = TextEditingController();
    parentesco2 = TextEditingController();
    direccion2 = TextEditingController();
    telefono2 = TextEditingController();
  }

  //INSERT DATA
  _historiaData() {
    /*if (fecha_nac.text.isEmpty ||
        edad.text.isEmpty ||
        nss.text.isEmpty ||
        lugar_residencia.text.isEmpty||
        
      e_cardicas.text.isEmpty ||
      hipertension.text.isEmpty ||
      convulsiones.text.isEmpty ||
      cancer.text.isEmpty ||
      e_mentales.text.isEmpty ||
      diabetes.text.isEmpty ||
      e_alergicas.text.isEmpty ||
      tuberculosis.text.isEmpty ||

      vacunas_recientes.text.isEmpty ||
      practicas_deporte.text.isEmpty ||
      cual_deporte.text.isEmpty ||
      cuantas_veces_deporte.text.isEmpty ||
      fumas.text.isEmpty ||
      edad_inicio_f.text.isEmpty ||
      cigarros_a_la_semana.text.isEmpty ||
      bebidas_alcoholicas.text.isEmpty ||
      edad_inicio_a.text.isEmpty ||
      cantidad_por_semana.text.isEmpty ||
      drogas.text.isEmpty ||
      edad_inicio_d.text.isEmpty ||
      cuantas_veces_d.text.isEmpty ||

      cirujia.text.isEmpty ||
      fecha_cirujia.text.isEmpty ||
      tipo_cirujia.text.isEmpty ||
      institucion.text.isEmpty ||

      alergias.text.isEmpty ||
      medicamentos.text.isEmpty ||

      accidente.text.isEmpty ||
      secuelas_accidente.text.isEmpty ||
      fracturas.text.isEmpty ||
      complicaciones.text.isEmpty ||
      cual_complicacion.text.isEmpty ||

      transfuncion_sanguinea.text.isEmpty ||
      fecha_transfucion.text.isEmpty ||
      motivo.text.isEmpty ||

      varicela.text.isEmpty ||
      tosferina.text.isEmpty ||
      sarampion.text.isEmpty ||
      rubeola.text.isEmpty ||
      sinusitis.text.isEmpty ||
      paperas.text.isEmpty ||
      hepatitis.text.isEmpty ||
      tifoidea.text.isEmpty ||
      fiebre_reumatica.text.isEmpty ||
      convulciones.text.isEmpty ||
      parasitos.text.isEmpty ||
      diabetis_mellitus.text.isEmpty ||
      hipertension_arterial.text.isEmpty ||
      anemia.text.isEmpty ||
      enf_cardiacas.text.isEmpty ||
      enf_renales.text.isEmpty ||



      descripcion_tratamiento.text.isEmpty ||

      nombre1.text.isEmpty ||
      parentesco1.text.isEmpty ||
      direccion1.text.isEmpty ||
      telefono1.text.isEmpty ||
      nombre2.text.isEmpty ||
      parentesco2.text.isEmpty ||
      direccion2.text.isEmpty ||
      telefono2.text.isEmpty
        ) {
      print("Empy fields");
      return;
    }*/
    //_showProgress('Adding Student...');
    BDConnections2.historiaData(
      '$matricula',
      fecha_nac.text,
      nss.text,
      edad.text,
      lugar_residencia.text,
      e_cardicas.text,
      hipertension.text,
      convulsiones.text,
      cancer.text,
      e_mentales.text,
      diabetes.text,
      e_alergicas.text,
      tuberculosis.text,
      vacunas_recientes.text,
      practicas_deporte.text,
      cual_deporte.text,
      cuantas_veces_deporte.text,
      fumas.text,
      edad_inicio_f.text,
      cigarros_a_la_semana.text,
      bebidas_alcoholicas.text,
      edad_inicio_a.text,
      cantidad_por_semana.text,
      drogas.text,
      edad_inicio_d.text,
      cuantas_veces_d.text,
      cirujia.text,
      fecha_cirujia.text,
      tipo_cirujia.text,
      institucion.text,
      alergias.text,
      medicamentos.text,
      accidente.text,
      secuelas_accidente.text,
      fracturas.text,
      complicaciones.text,
      cual_complicacion.text,
      transfuncion_sanguinea.text,
      fecha_transfucion.text,
      motivo.text,
      varicela.text,
      tosferina.text,
      sarampion.text,
      rubeola.text,
      sinusitis.text,
      paperas.text,
      hepatitis.text,
      tifoidea.text,
      fiebre_reumatica.text,
      //convulciones.text,
      parasitos.text,
      diabetis_mellitus.text,
      hipertension_arterial.text,
      anemia.text,
      enf_cardiacas.text,
      enf_renales.text,
      edad_de_primer_periodo.text,
      periodo_regular.text,
      dias_de_duracion.text,
      cada_cuantos_dias.text,
      embarazos.text,
      cuantas_veces_emb.text,
      parto.text,
      cesarea.text,
      aborto.text,
      legrado.text,
      metodo_de_planificacion.text,
      cual_metodo.text,
      // papanicolao.text,
      tiempo_de_hacerlo.text,
      descripcion_tratamiento.text,
      nombre1.text,
      parentesco1.text,
      direccion1.text,
      telefono1.text,
      nombre2.text,
      parentesco2.text,
      direccion2.text,
      telefono2.text,
    ).then((result) {
      if ('sucess' == result) {
        fecha_nac.text = "";
        edad.text = "";
        nss.text = "";
        lugar_residencia.text = "";

        e_cardicas.text = "";
        hipertension.text = "";
        convulsiones.text = "";
        cancer.text = "";
        e_mentales.text = "";
        diabetes.text = "";
        e_alergicas.text = "";
        tuberculosis.text = "";

        vacunas_recientes.text = "";
        practicas_deporte.text = "";
        cual_deporte.text = "";
        cuantas_veces_deporte.text = "";
        fumas.text = "";
        edad_inicio_f.text = "";
        cigarros_a_la_semana.text = "";
        bebidas_alcoholicas.text = "";
        edad_inicio_a.text = "";
        cantidad_por_semana.text = "";
        drogas.text = "";
        edad_inicio_d.text = "";
        cuantas_veces_d.text = "";

        cirujia.text = "";
        fecha_cirujia.text = "";
        tipo_cirujia.text = "";
        institucion.text = "";

        //alergias.text = "";
        medicamentos.text = "";

        accidente.text = "";
        secuelas_accidente.text = "";
        fracturas.text = "";
        complicaciones.text = "";
        cual_complicacion.text = "";

        transfuncion_sanguinea.text = "";
        fecha_transfucion.text = "";
        motivo.text = "";

        varicela.text = "";
        tosferina.text = "";
        sarampion.text = "";
        rubeola.text = "";
        sinusitis.text = "";
        paperas.text = "";
        hepatitis.text = "";
        tifoidea.text = "";
        fiebre_reumatica.text = "";
        convulciones.text = "";
        parasitos.text = "";
        diabetis_mellitus.text = "";
        hipertension_arterial.text = "";
        anemia.text = "";
        //enf_cardiacas.text = "";
        enf_renales.text = "";

        edad_de_primer_periodo.text = "";
        periodo_regular.text = "";
        dias_de_duracion.text = "";
        cada_cuantos_dias.text = "";
        embarazos.text = "";
        cuantas_veces_emb.text = "";
        parto.text = "";
        cesarea.text = "";
        aborto.text = "";
        legrado.text = "";
        metodo_de_planificacion.text = "";
        cual_metodo.text = "";
        papanicolao.text = "";
        tiempo_de_hacerlo.text = "";

        descripcion_tratamiento.text = "";

        nombre1.text = "";
        parentesco1.text = "";
        direccion1.text = "";
        telefono1.text = "";
        nombre2.text = "";
        parentesco2.text = "";
        direccion2.text = "";
        telefono2.text = "";

        _clearValues();
      }
    });
  }

  _clearValues() {
    fecha_nac.text = "";
    edad.text = "";
    nss.text = "";
    lugar_residencia.text = "";

    e_cardicas.text = "";
    hipertension.text = "";
    convulsiones.text = "";
    cancer.text = "";
    e_mentales.text = "";
    diabetes.text = "";
    e_alergicas.text = "";
    tuberculosis.text = "";

    vacunas_recientes.text = "";
    practicas_deporte.text = "";
    cual_deporte.text = "";
    cuantas_veces_deporte.text = "";
    fumas.text = "";
    edad_inicio_f.text = "";
    cigarros_a_la_semana.text = "";
    bebidas_alcoholicas.text = "";
    edad_inicio_a.text = "";
    cantidad_por_semana.text = "";
    drogas.text = "";
    edad_inicio_d.text = "";
    cuantas_veces_d.text = "";

    cirujia.text = "";
    fecha_cirujia.text = "";
    tipo_cirujia.text = "";
    institucion.text = "";

    alergias.text = "";
    medicamentos.text = "";

    accidente.text = "";
    secuelas_accidente.text = "";
    fracturas.text = "";
    complicaciones.text = "";
    cual_complicacion.text = "";

    transfuncion_sanguinea.text = "";
    fecha_transfucion.text = "";
    motivo.text = "";

    varicela.text = "";
    tosferina.text = "";
    sarampion.text = "";
    rubeola.text = "";
    sinusitis.text = "";
    paperas.text = "";
    hepatitis.text = "";
    tifoidea.text = "";
    fiebre_reumatica.text = "";
    convulciones.text = "";
    parasitos.text = "";
    diabetis_mellitus.text = "";
    hipertension_arterial.text = "";
    anemia.text = "";
    enf_cardiacas.text = "";
    enf_renales.text = "";

    edad_de_primer_periodo.text = "";
    periodo_regular.text = "";
    dias_de_duracion.text = "";
    cada_cuantos_dias.text = "";
    embarazos.text = "";
    cuantas_veces_emb.text = "";
    parto.text = "";
    cesarea.text = "";
    aborto.text = "";
    legrado.text = "";
    metodo_de_planificacion.text = "";
    cual_metodo.text = "";
    papanicolao.text = "";
    tiempo_de_hacerlo.text = "";

    descripcion_tratamiento.text = "";

    nombre1.text = "";
    parentesco1.text = "";
    direccion1.text = "";
    telefono1.text = "";
    nombre2.text = "";
    parentesco2.text = "";
    direccion2.text = "";
    telefono2.text = "";
  }

  void validateAndSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      print('form is valid');
      // _showScaffold("DATOS REGISTRADOS!");
      _historiaData();
      _clearValues();
    } else {
      print('form invalid');
    }
  }

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
          Column(
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  _historiaData();
                  _clearValues();
                },
                child: InkWell(
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green[200],
                            Colors.indigo,
                            Colors.green,
                            Colors.indigo[200]
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Text(
                        'GUARDAR'.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        controller: fecha_nac,
                        validator: (val) =>
                            val.length < 11 ? null : 'Respuesta inválida',
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
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        controller: edad,
                        validator: (val) =>
                            val.length < 2 ? null : 'Respuesta inválida',
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
                  controller: nss,
                  validator: (val) =>
                      val.length < 10 ? null : 'Respuesta inválida',
                  /*P E N D I E N T E  C A N T I D A D  D E  N S S*/
                  decoration: InputDecoration(
                    labelText: 'Número de Seguro Social',
                    hintText: 'Deben ser 10 dígitos',
                    icon: Icon(Icons.list),
                    isDense: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
                child: TextFormField(
                  controller: lugar_residencia,
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: e_cardicas,
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
                        controller: hipertension,
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
                        controller: convulsiones,
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
                        controller: cancer,
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
                        controller: e_mentales,
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
                        controller: diabetes,
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
                        controller: e_alergicas,
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
                        controller: tuberculosis,
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
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: vacunas_recientes,
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
                        controller: practicas_deporte,
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
                        controller: cual_deporte,
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
                  controller: cuantas_veces_deporte,
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
                        controller: fumas,
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
                        controller: edad_inicio_f,
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
                  controller: cigarros_a_la_semana,
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
                        controller: bebidas_alcoholicas,
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
                        controller: edad_inicio_a,
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
                  controller: cantidad_por_semana,
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
                        controller: drogas,
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
                        controller: edad_inicio_d,
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
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  controller: cuantas_veces_d,
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: cirujia,
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
                        controller: fecha_cirujia,
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
                  controller: tipo_cirujia,
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
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  controller: institucion,
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
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  controller: alergias,
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
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
                child: TextFormField(
                  controller: medicamentos,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: accidente,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: secuelas_accidente,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: fracturas,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: complicaciones,
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
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
                child: TextFormField(
                  controller: cual_complicacion,
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
                //backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: transfuncion_sanguinea,
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
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: fecha_transfucion,
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
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: TextFormField(
                  controller: motivo,
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: varicela,
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
                        controller: tosferina,
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
                        controller: sarampion,
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
                        controller: rubeola,
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
                        controller: sinusitis,
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
                        controller: paperas,
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
                        controller: hepatitis,
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
                        controller: tifoidea,
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
                        controller: fiebre_reumatica,
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
                        controller: convulciones,
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
                        controller: parasitos,
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
                        controller: diabetis_mellitus,
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
                        controller: hipertension_arterial,
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
                        controller: anemia,
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
                        controller: enf_cardiacas,
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
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        controller: enf_renales,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: edad_de_primer_periodo,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: periodo_regular,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: dias_de_duracion,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: cada_cuantos_dias,
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: embarazos,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: TextFormField(
                  controller: cuantas_veces_emb,
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
              Text(''),
              Text(''),
              Text(
                  'INGRESE SI O NO, EN DADO CASO DE HABER PASADO POR UNO DE LOS SIGUIENTES PROCESOS:'),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: TextFormField(
                        controller: parto,
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
                        controller: cesarea,
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
                        controller: aborto,
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
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 24, top: 16),
                      child: TextFormField(
                        controller: legrado,
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
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 0),
                child: TextFormField(
                  controller: metodo_de_planificacion,
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
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
                child: TextFormField(
                  controller: cual_metodo,
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
              ),
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
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
                child: TextFormField(
                  controller: descripcion_tratamiento,
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
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: TextFormField(
                  controller: nombre1,
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
                        controller: parentesco1,
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
                        controller: telefono1,
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
                  controller: direccion1,
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
                  controller: nombre2,
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
                        controller: parentesco2,
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
                        controller: telefono2,
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
                  controller: direccion2,
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
    ));
  }
}
