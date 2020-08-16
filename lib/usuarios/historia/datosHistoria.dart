import 'package:flutter/material.dart';

class Historia{
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
  //INFORMACION PERONAL
    String fecha_nac;
    String edad;
    String nss;
    String lugar_residencia;

  //ANTECEDENTES HEREDOFAMILIARES
    String e_cardicas;
    String hipertension;
    //String convulsiones;
    String cancer;
    String e_mentales;
    String diabetes;
    String e_alergicas;
    String tuberculosis;

  //PERSONALES NO PATOLOGICOS
    String vacunas_recientes;
    String practicas_deporte;
    String cual_deporte;
    String cuantas_veces_deporte;
    String fumas;
    String edad_inicio_f;
    String cigarros_a_la_semana;
    String bebidas_alcoholicas;
    String edad_inicio_a;
    String cantidad_por_semana;
    String drogas;
    String edad_inicio_d;
    String cuantas_veces_d;

  //ANTECEDENTES QUIRURGICOS
    String cirujia;
    String fecha_cirujia;
    String tipo_cirujia;
    String institucion;

  //ANTECEDENTES ALERGICOS
    String alergias;
    String medicamentos;

  //ANTECEDENTES TRAUMATICOS
    String accidente;
    String secuelas_accidente;
    String fracturas;
    String complicaciones;
    String cual_complicacion;

  //ANTECEDENTES TRANSFUNCIONALES
    String transfuncion_sanguinea;
    String fecha_transfucion;
    String motivo;

  //ENFERMEDADES
    String varicela;
    String tosferina;
    String sarampion;
    String rubeola;
    String sinusitis;
    String paperas;
    String hepatitis;
    String tifoidea;
    String fiebre_reumatica;
    String convulciones;
    String parasitos;
    String diabetis_mellitus;
    String hipertension_arterial;
    String anemia;
    String enf_cardiacas;
    String enf_renales;

  //ANTECEDENTES GINECOBSTETRICOS
    String edad_de_primer_periodo;
    String periodo_regular;
    String dias_de_duracion;
    String cada_cuantos_dias;
    String embarazos;
    String cuantas_veces_emb;
    String parto;
    String cesarea;
    String aborto;
    String legrado;
    String metodo_de_planificacion;
    String cual_metodo;
    //String papanicolao; 
    //String tiempo_de_hacerlo;

  //TRATAMIENTO
    String descripcion_tratamiento;

  //CONTACTOS
    String nombre1;
    String parentesco1;
    String direccion1;
    String telefono1;
    
    String nombre2;
    String parentesco2;
    String direccion2;
    String telefono2;


    Historia(
      {
      this.cve_persona,
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
      this.foto,
        //INFORMACION PERONAL
          this.fecha_nac,
          this.edad,
          this.nss,
          this.lugar_residencia,

        //ANTECEDENTES HEREDOFAMILIARES
          this.e_cardicas,
          this.hipertension,
          //this.convulsiones,
          this.cancer,
          this.e_mentales,
          this.diabetes,
          this.e_alergicas,
          this.tuberculosis,

        //PERSONALES NO PATOLOGICOS
          this.vacunas_recientes,
          this.practicas_deporte,
          this.cual_deporte,
          this.cuantas_veces_deporte,
          this.fumas,
          this.edad_inicio_f,
          this.cigarros_a_la_semana,
          this.bebidas_alcoholicas,
          this.edad_inicio_a,
          this.cantidad_por_semana,
          this.drogas,
          this.edad_inicio_d,
          this.cuantas_veces_d,

        //ANTECEDENTES QUIRURGICOS
          this.cirujia,
          this.fecha_cirujia,
          this.tipo_cirujia,
          this.institucion,

        //ANTECEDENTES ALERGICOS
          this.alergias,
          this.medicamentos,

        //ANTECEDENTES TRAUMATICOS
          this.accidente,
          this.secuelas_accidente,
          this.fracturas,
          this.complicaciones,
          this.cual_complicacion,

        //ANTECEDENTES TRANSFUNCIONALES
          this.transfuncion_sanguinea,
          this.fecha_transfucion,
          this.motivo,

        //ENFERMEDADES
          this.varicela,
          this.tosferina,
          this.sarampion,
          this.rubeola,
          this.sinusitis,
          this.paperas,
          this.hepatitis,
          this.tifoidea,
          this.fiebre_reumatica,
          this.convulciones,
          this.parasitos,
          this.diabetis_mellitus,
          this.hipertension_arterial,
          this.anemia,
          this.enf_cardiacas,
          this.enf_renales,

        //ANTECEDENTES GINECOBSTETRICOS
          this.edad_de_primer_periodo,
          this.periodo_regular,
          this.dias_de_duracion,
          this.cada_cuantos_dias,
          this.embarazos,
          this.cuantas_veces_emb,
          this.parto,
          this.cesarea,
          this.aborto,
          this.legrado,
          this.metodo_de_planificacion,
          this.cual_metodo,
          //this.papanicolao, 
          //this.tiempo_de_hacerlo,

        //TRATAMIENTO
          this.descripcion_tratamiento,

        //CONTACTOS
          this.nombre1,
          this.parentesco1,
          this.direccion1,
          this.telefono1,
          this.nombre2,
          this.parentesco2,
          this.direccion2,
          this.telefono2,
      });


  //Patrones de diseño, ventajas de regresar un objeto
  factory Historia.fromJson(Map<String, dynamic> json) {
    return Historia(
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
        foto: json['foto'] as String,
        //INFORMACION PERONAL
        fecha_nac: json['fecha_nac'] as String,
        edad: json['edad'] as String,
        nss: json['nss'] as String,
        lugar_residencia: json['lugar_residencia'] as String,

        //ANTECEDENTES HEREDOFAMILIARES
        e_cardicas: json['e_cardicas'] as String,
        hipertension: json['hipertension'] as String,
        //convulsiones: json['convulsiones'] as String,
        cancer: json['cancer'] as String,
        e_mentales: json['e_mentales'] as String,
        diabetes: json['diabetes'] as String,
        e_alergicas: json['e_alergicas'] as String,
        tuberculosis: json['tuberculosis'] as String,

        //PERSONALES NO PATOLOGICOS
        vacunas_recientes: json['vacunas_recientes'] as String,
        practicas_deporte: json['practicas_deporte'] as String,
        cual_deporte: json['cual_deporte'] as String,
        cuantas_veces_deporte: json['cuantas_veces_deporte'] as String,
        fumas: json['fumas'] as String,
        edad_inicio_f: json['edad_inicio_f'] as String,
        cigarros_a_la_semana: json['cigarros_a_la_semana'] as String,
        bebidas_alcoholicas: json['bebidas_alcoholicas'] as String,
        edad_inicio_a: json['edad_inicio_a'] as String,
        cantidad_por_semana: json['cantidad_por_semana'] as String,
        drogas: json['drogas'] as String,
        edad_inicio_d: json['edad_inicio_d'] as String,
        cuantas_veces_d: json['cuantas_veces_d'] as String,

        //ANTECEDENTES QUIRURGICOS
        cirujia: json['cirujia'] as String,
        fecha_cirujia: json['fecha_cirujia'] as String,
        tipo_cirujia: json['tipo_cirujia'] as String,
        institucion: json['institucion'] as String,

       //ANTECEDENTES ALERGICOS
        alergias: json['alergias'] as String,
        medicamentos: json['medicamentos'] as String,

        //ANTECEDENTES TRAUMATICOS
        accidente: json['accidente'] as String,
        secuelas_accidente: json['secuelas_accidente'] as String,
        fracturas: json['fracturas'] as String,
        complicaciones: json['complicaciones'] as String,
        cual_complicacion: json['cual_complicacion'] as String,

        //ANTECEDENTES TRANSFUNCIONALES
        transfuncion_sanguinea: json['transfuncion_sanguinea'] as String,
        fecha_transfucion: json['fecha_transfucion'] as String,
        motivo: json['motivo'] as String,

        //ENFERMEDADES
        varicela: json['varicela'] as String,
        tosferina: json['tosferina'] as String,
        sarampion: json['sarampion'] as String,
        rubeola: json['rubeola'] as String,
        sinusitis: json['sinusitis'] as String,
        paperas: json['paperas'] as String,
        hepatitis: json['hepatitis'] as String,
        tifoidea: json['tifoidea'] as String,
        fiebre_reumatica: json['fiebre_reumatica'] as String,
        convulciones: json['convulciones'] as String,
        parasitos: json['parasitos'] as String,
        diabetis_mellitus: json['diabetis_mellitus'] as String,
        hipertension_arterial: json['hipertension_arterial'] as String,
        anemia: json['anemia'] as String,
        enf_cardiacas: json['enf_cardiacas'] as String,
        enf_renales: json['enf_renales'] as String,

        //ANTECEDENTES GINECOBSTETRICOS
        edad_de_primer_periodo: json['edad_de_primer_periodo'] as String,
        periodo_regular: json['periodo_regular'] as String,
        dias_de_duracion: json['dias_de_duracion'] as String,
        cada_cuantos_dias: json['cada_cuantos_dias'] as String,
        embarazos: json['embarazos'] as String,
        cuantas_veces_emb: json['cuantas_veces_emb'] as String,
        parto: json['parto'] as String,
        cesarea: json['cesarea'] as String,
        aborto: json['aborto'] as String,
        legrado: json['legrado'] as String,
        metodo_de_planificacion: json['metodo_de_planificacion'] as String,
        cual_metodo: json['cual_metodo'] as String,
        //papanicolao: json['papanicolao'] as String,
        //tiempo_de_hacerlo: json['tiempo_de_hacerlo'] as String,

        //TRATAMIENTO
        descripcion_tratamiento: json['descripcion_tratamiento'] as String,

        //CONTACTOS
        nombre1: json['nombre1'] as String,
        parentesco1: json['parentesco1'] as String,
        direccion1: json['direccion1'] as String,
        telefono1: json['telefono1'] as String,
        nombre2: json['nombre2'] as String,
        parentesco2: json['parentesco2'] as String,
        direccion2: json['direccion2'] as String,
        telefono2: json['telefono2'] as String,
        
    );
  }
}