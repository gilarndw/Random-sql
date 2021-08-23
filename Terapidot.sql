
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

