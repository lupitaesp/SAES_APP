drop database if exists integradora_app;
create database if not exists integradora_app;
use integradora_app;
select database();

drop table if exists medicamentos;
create table if not exists medicamentos(
cve_medicamento       int(4)          auto_increment,
nombre                varchar(70)     not null,
descripcion           varchar(150)    not null,
stock                 char(3)         not null,
activo                bit(2)          not null,  
primary key (cve_medicamento)
);

drop table if exists tratamiento;
create table if not exists tratamiento(
cve_tratamiento       int(4)           auto_increment,
descripcion           varchar(200)     not null,
activo                bit(2)           not null,
cve_medicamento       int(4),
primary key (cve_tratamiento)
);

drop table if exists nota_medica;
create table if not exists nota_medica(
cve_nota_medica      int(4)           auto_increment,
diagnostico          varchar(150)     not null,
cve_tratamiento      int(2),
cve_persona          int(3),
cve_signos           int(3),
primary key (cve_nota_medica)
);

/*nota medica*/
drop table if exists signos;
create table if not exists signos(
cve_signos                int(4)        auto_increment,
estatura                  int(4)        not null,
peso                      int(5)        not null,
frecuencia_cardiaca       varchar(8)    not null,
temperatura               varchar(4)    not null,
glucosa                   varchar(8)    not null,
tension_arterial          varchar(9)    not null,
primary key (cve_signos)
);

/*historia clinica*/
drop table if exists ginecobstetricos;
create table if not exists ginecobstetricos(
cve_ginecobstetricos          int(4)         auto_increment,
edad_de_primer_periodo        char(2)        not null,
periodo_regular               bit(2)         not null,
dias_de_duracion              float(2)       not null,
cada_cuantos_dias             float(2)       not null,
embarazos                     bit(2)         not null,
cuantas_veces                 float(2)       not null,
parto                         bit(2)         not null,
cesarea                       bit(2)         not null,
aborto                        bit(2)         not null,
legrado                       bit(2)         not null,
metodo_de_planificacion       bit(2)         not null,
cual_metodo                   varchar(25)    not null,
papanicolao                   bit(2)         not null,    
tiempo_de_hacerlo             varchar(25)    not null,
primary key (cve_ginecobstetricos)     
);

/*historia clinica*/
drop table if exists heredofamiliares;
create table if not exists heredofamiliares(
cve_heredofamiliares        int(4)         auto_increment,
cancer                      bit(2)         not null,
convulsiones                bit(2)         not null,
hipertension                bit(2)         not null,
e_cardicas                  bit(2)         not null,
e_mentales                  bit(2)         not null,
diabetes                    bit(2)         not null,
e_alergicas                 bit(2)         not null,
tuberculosis                bit(2)         not null,
primary key (cve_heredofamiliares) 
);

/*historia clinica*/
drop table if exists historia_clinica;
create table if not exists historia_clinica(
cve_historia                    int(4)       auto_increment,
fecha                           date,
cve_persona                     int(4),
cve_ginecobstetricos            int(4),
cve_no_patologicos              int(4),
cve_quirurgicos                 int(4),
cve_alergicos                   int(4),
cve_traumaticos                 int(4),
cve_transfuncionales             int(4),
cve_enfermedades                int(4),
cve_contactos                   int(4),
cve_heredofamiliares            int(4),
cve_tratamiento_historia        int(4),
primary key (cve_historia)
);

/*historia clinica*/
drop table if exists antecedentes_alergicos;
create table if not exists antecedentes_alergicos(
cve_alergicos          int(4)        auto_increment,
alergias               bit(2)        not null,
medicamentos           varchar(30)   not null,
primary key (cve_alergicos) 
);

/*historia clinica*/
drop table if exists antecedentes_traumaticos;
create table if not exists antecedentes_traumaticos(
cve_traumaticos          int(4)         auto_increment,
accidente                bit(2)        not null,
secuelas_accidente       bit(2)        not null,
fracturas                bit(2)        not null,
complicaciones           bit(2)        not null,
cual_complicacion        varchar(20)   not null,
primary key (cve_traumaticos) 
);

/*historia clinica*/
drop table if exists tratamiento_historia;
create table if not exists tratamiento_historia(
cve_tratamiento_historia       int(4)           auto_increment,
descripcion                    varchar(200)     not null,
primary key (cve_tratamiento_historia) 
);

/*historia clinica*/
drop table if exists contactos;
create table if not exists contactos(
cve_contactos     int(4)                auto_increment,
nombre1            varchar(70)           not null,
parentesco1        varchar(20)           not null,
direccion1         varchar(50)           not null,
telefono1          char(10)              not null,
nombre2            varchar(70)           not null,
parentesco2        varchar(20)           not null,
direccion2         varchar(50)           not null,
telefono2          char(10)              not null,
primary key (cve_contactos)
);

/*historia clinica*/
drop table if exists enfermedades;
create table if not exists enfermedades (
cve_enfermedades         int(4)        auto_increment,
varicela                 bit(2)        not null,
tosferina                bit(2)        not null,
sarampion                bit(2)        not null,
rubeola                  bit(2)        not null,
sinusitis                bit(2)        not null,
paperas                  bit(2)        not null,
hepatitis                bit(2)        not null,
tifoidea                 bit(2)        not null,
fiebre_reumatica         bit(2)        not null,
convulciones             bit(2)        not null,
parasitos                bit(2)        not null,
diabetis_mellitus        bit(2)        not null,
hipertension_arterial    bit(2)        not null,
anemia                   bit(2)        not null,
enf_cardiacas            bit(2)        not null,
enf_renales              bit(2)        not null,
tratamiento_medico       bit(2)        not null,
tipo_tratamiento         bit(2)        not null,
primary key (cve_enfermedades)
);

/*historia clinica*/
drop table if exists antecedentes_transfuncionales;
create table if not exists antecedentes_transfuncionales (
cve_transfuncionales       int(4)        auto_increment,
transfuncion_sanguinea     bit(2)        not null,
fecha                      date          not null,
motivo                     varchar(25)   not null,
primary key (cve_transfuncionales)
);

/*historia clinica*/
drop table if exists personales_no_patologicos;
create table if not exists personales_no_patologicos (
cve_no_patologicos        int(4)         auto_increment,
vacunas_recientes         varchar(20)    not null,
practicas_deporte         bit(2)         not null,
cual_deporte              varchar(15)    not null,
cuantas_veces             char(2)        not null,
fumas                     bit(2)         not null,
edad_inicio_f             char(2)        not null,
cigarros_a_la_semana      char(2)        not null,
bebidas_alcoholicas       bit(2)         not null,
edad_inicio_a             char(2)        not null,
cantidad_por_semana       char(2)        not null,
drogas                    bit(5)         not null,
edad_inicio_d             char(2)        not null,
cuantas_veces_d           char(2)        not null, 
primary key (cve_no_patologicos)
);

/*historia clinica*/
drop table if exists antecedentes_quirurgicos;
create table if not exists antecedentes_quirurgicos (
cve_quirurgicos           int(4)         auto_increment,
operacion                 bit(2)         not null,
tipo_cirugia              varchar(20)    not null,
fecha_cirujia             date           not null,
institucion               varchar(20)    not null,
primary key (cve_quirurgicos)
);

/*si lleva insersion*/
drop table if exists tipo_usuario;
create table if not exists tipo_usuario (
cve_tipo_usuario          int(4)          auto_increment,
descripcion               varchar(25)     not null,
activo                    bit(2)          not null,
primary key (cve_tipo_usuario)
);


/*si lleva insersion*/
drop table if exists carreras;
create table if not exists carreras (
cve_carrera               int(4)          auto_increment,
descripcion               varchar(25)     not null,
activo                    bit(2)          not null,
primary key (cve_carrera)
);

/*si lleva insersion*/
drop table if exists periodos;
create table if not exists periodos(
cve_periodo			int(4)			auto_increment,
año 				char(5)			not null,
mes_inicio		    varchar(12) 	not null,
mes_fin			    varchar(12)		not null,
activo				bit(2)			not null,
primary key (cve_periodo)
);



drop table if exists persona;
create table if not exists persona(
cve_persona         int(4)          auto_increment,
matricula			char(10)		not null,
nombre        varchar(30)   not null,
ape_pat             varchar(25)     not null,
ape_mat             varchar(25)     not null,
email            varchar(30)    unique,
carrera			varchar(50) not null,
grupo           varchar(10)  not null,
telefono       char(10)   not null,
sexo            varchar(20)  not null,
contrasena        varchar(15)  not null,
usuario	varchar(12)         not null,
foto longblob not null,
primary key (cve_persona)
);


drop table if exists grupos;
create table if not exists grupos(
cve_grupo			int(4)			auto_increment,
cve_carrera			int(4)			not null,
cve_coordinador		int(4)			not null,
grupo				char(4)			not null,
activo				bit(2)			not null,
cve_periodo			int(4),
primary key (cve_grupo)
);


drop table if exists coordinador;
create table if not exists coordinador(
cve_coordinador		int(4)			auto_increment,
cve_persona			int(4)  null,
cve_carrera			int(4)  null,
primary key (cve_coordinador)
);

drop table if exists alumno;
create table if not exists alumno(
cve_alumno			int(4)			auto_increment,
matricula			char(10)		not null,
activo				bit(2)			not null,
cve_persona			int(4),
cve_carrera			int(4),
cve_usuario			int(4),
cve_grupo 			int(4),
primary key (cve_alumno)
);		



drop table if exists eventos;
create table if not exists eventos(
codigo				int(4)          auto_increment,
fecha				date,
articulo			varchar(25)		not null,
contenido			varchar(255)	not null,
tipo				varchar(25)		not null,
foto				longblob,
primary key (codigo) 
);

show tables;
insert into tipo_usuario(cve_tipo_usuario,descripcion,activo) values
(null,'doctora',1),
(null,'alumno',1);

insert into periodos(cve_periodo,año,mes_inicio,mes_fin,activo) values
(null,'2020','marzo','agosto',1);



insert into carreras(cve_carrera,descripcion,activo) values
(null,'tic',1);



insert into coordinador(cve_coordinador,cve_persona,cve_carrera) values
(null,'3','1');


insert into grupos(cve_grupo,cve_carrera,cve_coordinador,grupo,activo,cve_periodo) values
(null,'1','1','31',1,'1');



insert into alumno(cve_alumno,matricula,activo,cve_persona,cve_carrera,cve_usuario,cve_grupo) values 
(null,'1718110388',1,'1','1','1','1'),
(null,'1718110394',1,'2','1','2','1'),
(null,'1718110384',1,'3','1','3','1');




alter table historia_clinica add foreign key (cve_persona) references persona (cve_persona);
alter table historia_clinica add foreign key (cve_ginecobstetricos) references ginecobstetricos (cve_ginecobstetricos);
alter table historia_clinica add foreign key (cve_no_patologicos) references personales_no_patologicos (cve_no_patologicos);
alter table historia_clinica add foreign key (cve_quirurgicos) references antecedentes_quirurgicos (cve_quirurgicos);
alter table historia_clinica add foreign key (cve_alergicos) references antecedentes_alergicos (cve_alergicos);
alter table historia_clinica add foreign key (cve_traumaticos) references antecedentes_traumaticos (cve_traumaticos);
alter table historia_clinica add foreign key (cve_transfuncionales) references antecedentes_transfuncionales (cve_transfuncionales);
alter table historia_clinica add foreign key (cve_enfermedades) references enfermedades (cve_enfermedades);
alter table historia_clinica add foreign key (cve_contactos) references contactos (cve_contactos);
alter table historia_clinica add foreign key (cve_heredofamiliares) references heredofamiliares (cve_heredofamiliares);
alter table historia_clinica add foreign key (cve_tratamiento_historia) references tratamiento_historia (cve_tratamiento_historia);
alter table tratamiento add foreign key (cve_medicamento) references medicamentos (cve_medicamento);
alter table nota_medica add foreign key (cve_tratamiento) references tratamiento (cve_tratamiento);
alter table nota_medica add foreign key (cve_persona) references persona (cve_persona);
alter table nota_medica add foreign key (cve_signos) references signos (cve_signos);
alter table grupos add foreign key (cve_carrera) references carreras (cve_carrera);
alter table grupos add foreign key (cve_coordinador) references coordinador (cve_coordinador);
alter table grupos add foreign key (cve_periodo) references periodos (cve_periodo);
alter table coordinador add foreign key (cve_carrera) references carreras (cve_carrera);


/*#consulta para la busqueda
create view onee as select p.cve_persona, p.nombre, p.ape_pat, p.ape_mat, a.matricula 
from  alumno a
inner join datos_persona p on p.cve_persona = a.cve_alumno
where a.matricula like '%171811%'
order by p.cve_persona ;

create view two as select datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat,datos_persona.cve_persona,cve_tipo_usuario
from  usuario
inner join datos_persona  on datos_persona.cve_persona = usuario.cve_persona;

create view tree as select cve_tipo_usuario,cve_persona from usuario where curp='eand000502hhgsrga6' and pass_temp='utec';

create view four as select datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat,datos_persona.cve_persona,cve_tipo_usuario
from  usuario
inner join datos_persona  on datos_persona.cve_persona = usuario.cve_persona where datos_persona.cve_persona = 1;
 
create view five as select datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat, datos_persona.fecha_nacimiento, datos_persona.estado, curp
from  usuario
inner join datos_persona  on datos_persona.cve_persona = usuario.cve_persona  where datos_persona.cve_persona = '1';

create view six as select alumno.matricula, usuario.curp,datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat, datos_persona.fecha_nacimiento, datos_persona.estado
from datos_persona
inner join alumno  on alumno.cve_persona = datos_persona.cve_persona
inner join usuario on usuario.cve_persona = datos_persona.cve_persona;

create view seven as select alumno.matricula, carreras.descripcion ,datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat
from datos_persona
inner join alumno  on alumno.cve_persona = datos_persona.cve_persona
inner join carreras on carreras.cve_carrera = datos_persona.cve_carrera;

create view ocho as select alumno.matricula, carreras.descripcion, grupos.grupo,datos_persona.nombre, datos_persona.ape_pat, datos_persona.ape_mat
from datos_persona
inner join alumno  on alumno.cve_persona = datos_persona.cve_persona
inner join carreras on carreras.cve_carrera = datos_persona.cve_carrera
inner join grupos on grupos.cve_grupo = datos_persona.cve_grupo;

create view nine as select tipo_usuario.descripcion, datos_persona.nombre, datos_persona.ape_pat,datos_persona.ape_mat, curp from usuario
inner join tipo_usuario on tipo_usuario.cve_tipo_usuario = usuario.cve_tipo_usuario
inner join datos_persona on datos_persona.cve_persona = usuario.cve_persona;

create view ten as select periodos.año,periodos.mes_inicio,periodos.mes_fin, grupo from grupos
inner join periodos on periodos.cve_periodo = grupos.cve_periodo;

select * from usuario;
select cve_persona, cve_tipo_usuario from usuario where curp='eirg000405mhgsvda2' and pass_temp=compress('utec');*/drop database if exists integradora_app;
create database if not exists integradora_app;
use integradora_app;
select database();

drop table if exists medicamentos;
create table if not exists medicamentos(
cve_medicamento       int(4)          auto_increment,
nombre                varchar(70)     not null,
descripcion           varchar(150)    not null,
stock                 char(3)         not null,
activo                bit(2)          not null,  
primary key (cve_medicamento)
);

drop table if exists tratamiento;
create table if not exists tratamiento(
cve_tratamiento       int(4)           auto_increment,
descripcion           varchar(200)     not null,
activo                bit(2)           not null,
cve_medicamento       int(4),
primary key (cve_tratamiento)
);

drop table if exists nota_medica;
create table if not exists nota_medica(
cve_nota_medica      int(4)           auto_increment,
diagnostico          varchar(150)     not null,
cve_tratamiento      int(2),
cve_persona          int(3),
cve_signos           int(3),
primary key (cve_nota_medica)
);

/*nota medica*/
drop table if exists signos;
create table if not exists signos(
cve_signos                int(4)        auto_increment,
estatura                  int(4)        not null,
peso                      int(5)        not null,
frecuencia_cardiaca       varchar(8)    not null,
temperatura               varchar(4)    not null,
glucosa                   varchar(8)    not null,
tension_arterial          varchar(9)    not null,
primary key (cve_signos)
);

/*historia clinica*/
drop table if exists ginecobstetricos;
create table if not exists ginecobstetricos(
cve_ginecobstetricos          int(4)         auto_increment,
edad_de_primer_periodo        char(2)        not null,
periodo_regular               bit(2)         not null,
dias_de_duracion              float(2)       not null,
cada_cuantos_dias             float(2)       not null,
embarazos                     bit(2)         not null,
cuantas_veces                 float(2)       not null,
parto                         bit(2)         not null,
cesarea                       bit(2)         not null,
aborto                        bit(2)         not null,
legrado                       bit(2)         not null,
metodo_de_planificacion       bit(2)         not null,
cual_metodo                   varchar(25)    not null,
papanicolao                   bit(2)         not null,    
tiempo_de_hacerlo             varchar(25)    not null,
primary key (cve_ginecobstetricos)     
);

/*historia clinica*/
drop table if exists heredofamiliares;
create table if not exists heredofamiliares(
cve_heredofamiliares        int(4)         auto_increment,
cancer                      bit(2)         not null,
convulsiones                bit(2)         not null,
hipertension                bit(2)         not null,
e_cardicas                  bit(2)         not null,
e_mentales                  bit(2)         not null,
diabetes                    bit(2)         not null,
e_alergicas                 bit(2)         not null,
tuberculosis                bit(2)         not null,
primary key (cve_heredofamiliares) 
);

/*historia clinica*/
drop table if exists historia_clinica;
create table if not exists historia_clinica(
cve_historia                    int(4)       auto_increment,
fecha                           date,
cve_persona                     int(4),
cve_ginecobstetricos            int(4),
cve_no_patologicos              int(4),
cve_quirurgicos                 int(4),
cve_alergicos                   int(4),
cve_traumaticos                 int(4),
cve_transfuncionales             int(4),
cve_enfermedades                int(4),
cve_contactos                   int(4),
cve_heredofamiliares            int(4),
cve_tratamiento_historia        int(4),
primary key (cve_historia)
);

/*historia clinica*/
drop table if exists antecedentes_alergicos;
create table if not exists antecedentes_alergicos(
cve_alergicos          int(4)        auto_increment,
alergias               bit(2)        not null,
medicamentos           varchar(30)   not null,
primary key (cve_alergicos) 
);

/*historia clinica*/
drop table if exists antecedentes_traumaticos;
create table if not exists antecedentes_traumaticos(
cve_traumaticos          int(4)         auto_increment,
accidente                bit(2)        not null,
secuelas_accidente       bit(2)        not null,
fracturas                bit(2)        not null,
complicaciones           bit(2)        not null,
cual_complicacion        varchar(20)   not null,
primary key (cve_traumaticos) 
);

/*historia clinica*/
drop table if exists tratamiento_historia;
create table if not exists tratamiento_historia(
cve_tratamiento_historia       int(4)           auto_increment,
descripcion                    varchar(200)     not null,
primary key (cve_tratamiento_historia) 
);

/*historia clinica*/
drop table if exists contactos;
create table if not exists contactos(
cve_contactos     int(4)                auto_increment,
nombre1            varchar(70)           not null,
parentesco1        varchar(20)           not null,
direccion1         varchar(50)           not null,
telefono1          char(10)              not null,
nombre2            varchar(70)           not null,
parentesco2        varchar(20)           not null,
direccion2         varchar(50)           not null,
telefono2          char(10)              not null,
primary key (cve_contactos)
);

/*historia clinica*/
drop table if exists enfermedades;
create table if not exists enfermedades (
cve_enfermedades         int(4)        auto_increment,
varicela                 bit(2)        not null,
tosferina                bit(2)        not null,
sarampion                bit(2)        not null,
rubeola                  bit(2)        not null,
sinusitis                bit(2)        not null,
paperas                  bit(2)        not null,
hepatitis                bit(2)        not null,
tifoidea                 bit(2)        not null,
fiebre_reumatica         bit(2)        not null,
convulciones             bit(2)        not null,
parasitos                bit(2)        not null,
diabetis_mellitus        bit(2)        not null,
hipertension_arterial    bit(2)        not null,
anemia                   bit(2)        not null,
enf_cardiacas            bit(2)        not null,
enf_renales              bit(2)        not null,
tratamiento_medico       bit(2)        not null,
tipo_tratamiento         bit(2)        not null,
primary key (cve_enfermedades)
);

/*historia clinica*/
drop table if exists antecedentes_transfuncionales;
create table if not exists antecedentes_transfuncionales (
cve_transfuncionales       int(4)        auto_increment,
transfuncion_sanguinea     bit(2)        not null,
fecha                      date          not null,
motivo                     varchar(25)   not null,
primary key (cve_transfuncionales)
);

/*historia clinica*/
drop table if exists personales_no_patologicos;
create table if not exists personales_no_patologicos (
cve_no_patologicos        int(4)         auto_increment,
vacunas_recientes         varchar(20)    not null,
practicas_deporte         bit(2)         not null,
cual_deporte              varchar(15)    not null,
cuantas_veces             char(2)        not null,
fumas                     bit(2)         not null,
edad_inicio_f             char(2)        not null,
cigarros_a_la_semana      char(2)        not null,
bebidas_alcoholicas       bit(2)         not null,
edad_inicio_a             char(2)        not null,
cantidad_por_semana       char(2)        not null,
drogas                    bit(5)         not null,
edad_inicio_d             char(2)        not null,
cuantas_veces_d           char(2)        not null, 
primary key (cve_no_patologicos)
);

/*historia clinica*/
drop table if exists antecedentes_quirurgicos;
create table if not exists antecedentes_quirurgicos (
cve_quirurgicos           int(4)         auto_increment,
operacion                 bit(2)         not null,
tipo_cirugia              varchar(20)    not null,
fecha_cirujia             date           not null,
institucion               varchar(20)    not null,
primary key (cve_quirurgicos)
);

/*si lleva insersion*/
drop table if exists tipo_usuario;
create table if not exists tipo_usuario (
cve_tipo_usuario          int(4)          auto_increment,
descripcion               varchar(25)     not null,
activo                    bit(2)          not null,
primary key (cve_tipo_usuario)
);


/*si lleva insersion*/
drop table if exists carreras;
create table if not exists carreras (
cve_carrera               int(4)          auto_increment,
descripcion               varchar(25)     not null,
activo                    bit(2)          not null,
primary key (cve_carrera)
);

/*si lleva insersion*/
drop table if exists periodos;
create table if not exists periodos(
cve_periodo			int(4)			auto_increment,
año 				char(5)			not null,
mes_inicio		    varchar(12) 	not null,
mes_fin			    varchar(12)		not null,
activo				bit(2)			not null,
primary key (cve_periodo)
);



drop table if exists persona;
create table if not exists persona(
cve_persona         int(4)          auto_increment,
matricula			char(10)		not null,
nombre        varchar(30)   not null,
ape_pat             varchar(25)     not null,
ape_mat             varchar(25)     not null,
email            varchar(50)    unique,
carrera			varchar(50) not null,
grupo           varchar(10)  not null,
telefono       char(10)   not null, 
sexo            varchar(20)  not null,
contrasena        varchar(12) not null,
usuario	varchar(12)        not  null,
foto     longblob not null,
primary key (cve_persona)
);


/*INSERT INTO PERSONA(cve_persona,matricula,nombre,ape_pat,ape_mat,email,carrera,grupo,telefono,sexo,contrasena,usuario)
VALUES
(null,'171811038','lupita','espinoza','riveros','1718110388','tecno','ti51','5579230897','femenino','lupa','alumno');

SELECT usuario from persona where email='1718110388' AND contrasena='lupa';*/


drop table if exists grupos;
create table if not exists grupos(
cve_grupo			int(4)			auto_increment,
cve_carrera			int(4)			not null,
cve_coordinador		int(4)			not null,
grupo				char(4)			not null,
activo				bit(2)			not null,
cve_periodo			int(4),
primary key (cve_grupo)
);


drop table if exists coordinador;
create table if not exists coordinador(
cve_coordinador		int(4)			auto_increment,
cve_persona			int(4)  null,
cve_carrera			int(4)  null,
primary key (cve_coordinador)
);

drop table if exists alumno;
create table if not exists alumno(
cve_alumno			int(4)			auto_increment,
matricula			char(10)		not null,
activo				bit(2)			not null,
cve_persona			int(4),
cve_carrera			int(4),
cve_usuario			int(4),
cve_grupo 			int(4),
primary key (cve_alumno)
);		


drop table if exists eventos;
create table if not exists eventos(
codigo				int(4)          auto_increment,
fecha				date,
articulo			varchar(25)		not null,
contenido			varchar(255)	not null,
tipo				varchar(25)		not null,
foto				longblob,
primary key (codigo) 
);


show tables;
insert into tipo_usuario(cve_tipo_usuario,descripcion,activo) values
(null,'doctora',1),
(null,'alumno',1);

insert into periodos(cve_periodo,año,mes_inicio,mes_fin,activo) values
(null,'2020','marzo','agosto',1);



insert into carreras(cve_carrera,descripcion,activo) values
(null,'tic',1);


insert into coordinador(cve_coordinador,cve_persona,cve_carrera) values
(null,'3','1');


insert into grupos(cve_grupo,cve_carrera,cve_coordinador,grupo,activo,cve_periodo) values
(null,'1','1','31',1,'1');



insert into alumno(cve_alumno,matricula,activo,cve_persona,cve_carrera,cve_usuario,cve_grupo) values 
(null,'1718110388',1,'1','1','1','1'),
(null,'1718110394',1,'2','1','2','1'),
(null,'1718110384',1,'3','1','3','1');



alter table historia_clinica add foreign key (cve_persona) references persona (cve_persona);
alter table historia_clinica add foreign key (cve_ginecobstetricos) references ginecobstetricos (cve_ginecobstetricos);
alter table historia_clinica add foreign key (cve_no_patologicos) references personales_no_patologicos (cve_no_patologicos);
alter table historia_clinica add foreign key (cve_quirurgicos) references antecedentes_quirurgicos (cve_quirurgicos);
alter table historia_clinica add foreign key (cve_alergicos) references antecedentes_alergicos (cve_alergicos);
alter table historia_clinica add foreign key (cve_traumaticos) references antecedentes_traumaticos (cve_traumaticos);
alter table historia_clinica add foreign key (cve_transfuncionales) references antecedentes_transfuncionales (cve_transfuncionales);
alter table historia_clinica add foreign key (cve_enfermedades) references enfermedades (cve_enfermedades);
alter table historia_clinica add foreign key (cve_contactos) references contactos (cve_contactos);
alter table historia_clinica add foreign key (cve_heredofamiliares) references heredofamiliares (cve_heredofamiliares);
alter table historia_clinica add foreign key (cve_tratamiento_historia) references tratamiento_historia (cve_tratamiento_historia);
alter table tratamiento add foreign key (cve_medicamento) references medicamentos (cve_medicamento);
alter table nota_medica add foreign key (cve_tratamiento) references tratamiento (cve_tratamiento);
alter table nota_medica add foreign key (cve_persona) references persona (cve_persona);
alter table nota_medica add foreign key (cve_signos) references signos (cve_signos);
alter table grupos add foreign key (cve_carrera) references carreras (cve_carrera);
alter table grupos add foreign key (cve_coordinador) references coordinador (cve_coordinador);
alter table grupos add foreign key (cve_periodo) references periodos (cve_periodo);
/*llaves foranes del cordinador estan en las el la versi9on de git*/
