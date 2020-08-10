drop database if exists integradora_app;
create database if not exists integradora_app;
use integradora_app;
select database();

drop table if exists persona;
create table if not exists persona(
/cve_persona         int(4)          auto_increment,/
matricula			char(10)		not null,
nombre        varchar(30)   not null,
ape_pat             varchar(25)     not null,
ape_mat             varchar(25)     not null,
email            varchar(50)    unique,
carrera			varchar(50) not null,
grupo           varchar(10)  not null,
telefono       char(10)   not null,
sexo            varchar(20)  not null,
contrasena        varchar(15)  not null,
usuario	varchar(12)         not null,
foto longblob not null,
primary key (matricula)
);

drop table if exists historial;
create table if not exists historial(
cve_historia         int(4)          auto_increment,
/INFORMACION PERONAL/
fecha_nac                 date             not null,
edad                       char(2)          not null,
nss                       varchar(13)       not null,
lugar_residencia            varchar(30)     not null,
matricula			char(10)		not null,
/ANTECEDENTES HEREDOFAMILIARES/
e_cardicas                  varchar(2)         not null,
hipertension               varchar(2)         not null,
convulsiones                 varchar(2)          not null,
cancer                      varchar(2)         not null,
e_mentales                  varchar(2)         not null,
diabetes                    varchar(2)         not null,
e_alergicas                 varchar(2)         not null,
tuberculosis                varchar(2)         not null,
/PERSONALES NO PATOLOGICOS/
vacunas_recientes         varchar(20)    not null,
practicas_deporte         varchar(2)         not null,
cual_deporte              varchar(15)    not null,
cuantas_veces_deporte             varchar(2)        not null,
fumas                     varchar(2)         not null,
edad_inicio_f             varchar(2)        not null,
cigarros_a_la_semana      varchar(2)        not null,
bebidas_alcoholicas       varchar(2)         not null,
edad_inicio_a             varchar(2)        not null,
cantidad_por_semana       varchar(2)        not null,
drogas                    varchar(5)         not null,
edad_inicio_d             varchar(15)        not null,
cuantas_veces_d           varchar(15)        not null,
/ANTECEDENTES QUIRURGICOS/
cirujia					varchar(2) 		not null,
fecha_cirujia           date           not null,
tipo_cirujia 			varchar(20) 	not null,
institucion 			varchar(30)		not null,
/ANTECEDENTES ALERGICOS/
alergias               varchar(2)        not null,
medicamentos           varchar(30)   	 not null,
/ANTECEDENTES TRAUMATICOS/
accidente                varchar(2)        not null,
secuelas_accidente       varchar(2)        not null,
fracturas                varchar(2)        not null,
complicaciones           varchar(2)        not null,
cual_complicacion        varchar(20)   		not null,
/ANTECEDENTES TRANSFUNCIONALES/
transfuncion_sanguinea     varchar(2)        not null,
fecha_transfucion             date          not null,
motivo                     varchar(25)   not null,
/ENFERMEDADES/
varicela                 varchar(2)        not null,
tosferina                varchar(2)        not null,
sarampion                varchar(2)        not null,
rubeola                  varchar(2)        not null,
sinusitis                varchar(2)        not null,
paperas                  varchar(2)        not null,
hepatitis                varchar(2)        not null,
tifoidea                 varchar(2)        not null,
fiebre_reumatica         varchar(2)        not null,
convulciones             varchar(2)        not null,
parasitos                varchar(2)        not null,
diabetis_mellitus        varchar(2)        not null,
hipertension_arterial    varchar(2)        not null,
anemia                   varchar(2)        not null,
enf_cardiacas           varchar(2)        not null,
enf_renales              varchar(2)        not null,
/ANTECEDENTES GINECOBSTETRICOS/
edad_de_primer_periodo        char(2)        not null,
periodo_regular               varchar(2)         not null,
dias_de_duracion              varchar(2)       not null,
cada_cuantos_dias             varchar(2)       not null,
embarazos                     varchar(2)         not null,
cuantas_veces_emb             varchar(2)       not null,
parto                         varchar(2)         not null,
cesarea                       varchar(2)         not null,
aborto                        varchar(2)         not null,
legrado                       varchar(2)         not null,
metodo_de_planificacion       varchar(2)         not null,
cual_metodo                   varchar(25)    not null,
papanicolao                   varchar(2)         not null,    
tiempo_de_hacerlo             varchar(25)    not null,
/TRATAMIENTO/
descripcion_tratamiento           varchar(200)     not null,
/CONTACTOS/
nombre1            varchar(70)           not null,
parentesco1        varchar(20)           not null,
direccion1         varchar(50)           not null,
telefono1          char(10)              not null,
nombre2            varchar(70)           not null,
parentesco2        varchar(20)           not null,
direccion2         varchar(50)           not null,
telefono2          char(10)              not null,
primary key(cve_historia),
foreign key(matricula) references persona(matricula)
);

show tables;
