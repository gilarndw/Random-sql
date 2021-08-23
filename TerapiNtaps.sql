/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     1/17/2019 12:30:14 AM                        */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_EVALUASI_RELATIONS_DOKTER') then
    alter table EVALUASI
       delete foreign key FK_EVALUASI_RELATIONS_DOKTER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EVALUASI_RELATIONS_MANAGER') then
    alter table EVALUASI
       delete foreign key FK_EVALUASI_RELATIONS_MANAGER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KUNJUNGA_RELATIONS_ADMIN') then
    alter table KUNJUNGAN
       delete foreign key FK_KUNJUNGA_RELATIONS_ADMIN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KUNJUNGA_RELATIONS_MANAGER') then
    alter table KUNJUNGAN
       delete foreign key FK_KUNJUNGA_RELATIONS_MANAGER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_KUNJUNGA_RELATIONS_TERAPIS') then
    alter table KUNJUNGAN
       delete foreign key FK_KUNJUNGA_RELATIONS_TERAPIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LOGIN_RELATIONS_TERAPIS') then
    alter table "LOGIN"
       delete foreign key FK_LOGIN_RELATIONS_TERAPIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LOGIN_RELATIONS_ADMIN') then
    alter table "LOGIN"
       delete foreign key FK_LOGIN_RELATIONS_ADMIN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LOGIN_RELATIONS_DOKTER') then
    alter table "LOGIN"
       delete foreign key FK_LOGIN_RELATIONS_DOKTER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESUME_RELATIONS_TERAPIS') then
    alter table RESUME
       delete foreign key FK_RESUME_RELATIONS_TERAPIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESUME_RELATIONS_MANAGER') then
    alter table RESUME
       delete foreign key FK_RESUME_RELATIONS_MANAGER
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_3_FK'
     and t.table_name='ADMIN'
) then
   drop index ADMIN.RELATIONSHIP_3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ADMIN_PK'
     and t.table_name='ADMIN'
) then
   drop index ADMIN.ADMIN_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ADMIN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ADMIN
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_5_FK'
     and t.table_name='DOKTER'
) then
   drop index DOKTER.RELATIONSHIP_5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='DOKTER_PK'
     and t.table_name='DOKTER'
) then
   drop index DOKTER.DOKTER_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DOKTER'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DOKTER
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_10_FK'
     and t.table_name='EVALUASI'
) then
   drop index EVALUASI.RELATIONSHIP_10_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_9_FK'
     and t.table_name='EVALUASI'
) then
   drop index EVALUASI.RELATIONSHIP_9_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='EVALUASI_PK'
     and t.table_name='EVALUASI'
) then
   drop index EVALUASI.EVALUASI_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EVALUASI'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EVALUASI
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_13_FK'
     and t.table_name='KUNJUNGAN'
) then
   drop index KUNJUNGAN.RELATIONSHIP_13_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_12_FK'
     and t.table_name='KUNJUNGAN'
) then
   drop index KUNJUNGAN.RELATIONSHIP_12_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_8_FK'
     and t.table_name='KUNJUNGAN'
) then
   drop index KUNJUNGAN.RELATIONSHIP_8_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='KUNJUNGAN_PK'
     and t.table_name='KUNJUNGAN'
) then
   drop index KUNJUNGAN.KUNJUNGAN_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='KUNJUNGAN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table KUNJUNGAN
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LOGIN'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table "LOGIN"
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MANAGER_PK'
     and t.table_name='MANAGER'
) then
   drop index MANAGER.MANAGER_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MANAGER'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MANAGER
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_11_FK'
     and t.table_name='RESUME'
) then
   drop index RESUME.RELATIONSHIP_11_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_7_FK'
     and t.table_name='RESUME'
) then
   drop index RESUME.RELATIONSHIP_7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RESUME_PK'
     and t.table_name='RESUME'
) then
   drop index RESUME.RESUME_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RESUME'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RESUME
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_1_FK'
     and t.table_name='TERAPIS'
) then
   drop index TERAPIS.RELATIONSHIP_1_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TERAPIS_PK'
     and t.table_name='TERAPIS'
) then
   drop index TERAPIS.TERAPIS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TERAPIS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TERAPIS
end if;

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN 
(
   ID_ADMIN             integer                        not null,
   NAMA_ADMIN           varchar(1024)                  null,
   NO_HP_ADMIN          integer                        null,
   constraint PK_ADMIN primary key (ID_ADMIN)
);

/*==============================================================*/
/* Index: ADMIN_PK                                              */
/*==============================================================*/
create unique index ADMIN_PK on ADMIN (
ID_ADMIN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on ADMIN (
ID_ADMIN ASC
);

/*==============================================================*/
/* Table: DOKTER                                                */
/*==============================================================*/
create table DOKTER 
(
   ID_DOKTER            integer                        not null,
   NAMA_DOKTER          varchar(1024)                  null,
   NO_HP_DOKTER         integer                        null,
   constraint PK_DOKTER primary key (ID_DOKTER)
);

/*==============================================================*/
/* Index: DOKTER_PK                                             */
/*==============================================================*/
create unique index DOKTER_PK on DOKTER (
ID_DOKTER ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on DOKTER (
ID_DOKTER ASC
);

/*==============================================================*/
/* Table: EVALUASI                                              */
/*==============================================================*/
create table EVALUASI 
(
   ID_EVAL              integer                        not null,
   ID_DOKTER            integer                        null,
   ID_MANAGER           integer                        null,
   PENYAKIT             varchar(1024)                  null,
   JENIS_TERAPI         varchar(1024)                  null,
   constraint PK_EVALUASI primary key (ID_EVAL)
);

/*==============================================================*/
/* Index: EVALUASI_PK                                           */
/*==============================================================*/
create unique index EVALUASI_PK on EVALUASI (
ID_EVAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on EVALUASI (
ID_DOKTER ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on EVALUASI (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: KUNJUNGAN                                             */
/*==============================================================*/
create table KUNJUNGAN 
(
   ID_KUNJUNGAN         integer                        not null,
   ID_MANAGER           integer                        null,
   ID_ADMIN             integer                        null,
   ID_TERAPIS           integer                        null,
   TGL_KUNJUNGAN        date                           null,
   constraint PK_KUNJUNGAN primary key (ID_KUNJUNGAN)
);

/*==============================================================*/
/* Index: KUNJUNGAN_PK                                          */
/*==============================================================*/
create unique index KUNJUNGAN_PK on KUNJUNGAN (
ID_KUNJUNGAN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on KUNJUNGAN (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on KUNJUNGAN (
ID_MANAGER ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on KUNJUNGAN (
ID_ADMIN ASC
);

/*==============================================================*/
/* Table: "LOGIN"                                               */
/*==============================================================*/
create table "LOGIN" 
(
   ID_TERAPIS           integer                        null,
   ID_DOKTER            integer                        null,
   ID_ADMIN             integer                        null,
   ID_LOGIN             integer                        null,
   USERNAME             varchar(100)                   null,
   PASSWORD             varchar(100)                   null
);

/*==============================================================*/
/* Table: MANAGER                                               */
/*==============================================================*/
create table MANAGER 
(
   ID_MANAGER           integer                        not null,
   NAMA_MANAGER         varchar(1024)                  null,
   constraint PK_MANAGER primary key (ID_MANAGER)
);

/*==============================================================*/
/* Index: MANAGER_PK                                            */
/*==============================================================*/
create unique index MANAGER_PK on MANAGER (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: RESUME                                                */
/*==============================================================*/
create table RESUME 
(
   ID_RESUME            integer                        not null,
   ID_TERAPIS           integer                        null,
   ID_MANAGER           integer                        null,
   PASIEN               varchar(1024)                  null,
   ALAMAT_PASIEN        long varchar                   null,
   KELUHAN              varchar(1024)                  null,
   NO_HP_PASIEN         integer                        null,
   constraint PK_RESUME primary key (ID_RESUME)
);

/*==============================================================*/
/* Index: RESUME_PK                                             */
/*==============================================================*/
create unique index RESUME_PK on RESUME (
ID_RESUME ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on RESUME (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on RESUME (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: TERAPIS                                               */
/*==============================================================*/
create table TERAPIS 
(
   ID_TERAPIS           integer                        not null,
   NAMA_TERAPIS         varchar(1024)                  null,
   NO_HP_TERAPIS        integer                        null,
   constraint PK_TERAPIS primary key (ID_TERAPIS)
);

/*==============================================================*/
/* Index: TERAPIS_PK                                            */
/*==============================================================*/
create unique index TERAPIS_PK on TERAPIS (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on TERAPIS (
ID_TERAPIS ASC
);

alter table EVALUASI
   add constraint FK_EVALUASI_RELATIONS_DOKTER foreign key (ID_DOKTER)
      references DOKTER (ID_DOKTER)
      on update restrict
      on delete restrict;

alter table EVALUASI
   add constraint FK_EVALUASI_RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

alter table KUNJUNGAN
   add constraint FK_KUNJUNGA_RELATIONS_ADMIN foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN)
      on update restrict
      on delete restrict;

alter table KUNJUNGAN
   add constraint FK_KUNJUNGA_RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

alter table KUNJUNGAN
   add constraint FK_KUNJUNGA_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table "LOGIN"
   add constraint FK_LOGIN_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table "LOGIN"
   add constraint FK_LOGIN_RELATIONS_ADMIN foreign key (ID_ADMIN)
      references ADMIN (ID_ADMIN)
      on update restrict
      on delete restrict;

alter table "LOGIN"
   add constraint FK_LOGIN_RELATIONS_DOKTER foreign key (ID_DOKTER)
      references DOKTER (ID_DOKTER)
      on update restrict
      on delete restrict;

alter table RESUME
   add constraint FK_RESUME_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table RESUME
   add constraint FK_RESUME_RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

