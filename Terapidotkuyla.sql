
/*==============================================================*/
/* Table: ABSEN                                                 */
/*==============================================================*/
create table ABSEN 
(
   ID_ABSEN             integer                        not null,
   ID_LAPABSEN          integer                        null,
   ID_TERAPIS           integer                        null,
   ID_PASIEN            integer                        null,
   KEHADIRAN            smallint                       null,
   constraint PK_ABSEN primary key (ID_ABSEN)
);

/*==============================================================*/
/* Index: ABSEN_PK                                              */
/*==============================================================*/
create unique index ABSEN_PK on ABSEN (
ID_ABSEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on ABSEN (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on ABSEN (
ID_PASIEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on ABSEN (
ID_LAPABSEN ASC
);

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN 
(
   ID_ADMIN             integer                        not null,
   ID_USER              integer                        null,
   ID_JADWAL            integer                        null,
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
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on ADMIN (
ID_JADWAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on ADMIN (
ID_USER ASC
);

/*==============================================================*/
/* Table: DOKTER                                                */
/*==============================================================*/
create table DOKTER 
(
   ID_DOKTER            integer                        not null,
   ID_USER              integer                        null,
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
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on DOKTER (
ID_USER ASC
);

/*==============================================================*/
/* Table: EVALUASI                                              */
/*==============================================================*/
create table EVALUASI 
(
   ID_EVAL              integer                        not null,
   ID_DOKTER            integer                        null,
   ID_LAPEVAL           integer                        null,
   HASIL                long varchar                   null,
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
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on EVALUASI (
ID_LAPEVAL ASC
);

/*==============================================================*/
/* Table: JADWAL                                                */
/*==============================================================*/
create table JADWAL 
(
   ID_JADWAL            integer                        not null,
   ID_PASIEN            integer                        null,
   ID_TERAPIS           integer                        null,
   TGL_TERAPI           date                           null,
   constraint PK_JADWAL primary key (ID_JADWAL)
);

/*==============================================================*/
/* Index: JADWAL_PK                                             */
/*==============================================================*/
create unique index JADWAL_PK on JADWAL (
ID_JADWAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on JADWAL (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on JADWAL (
ID_PASIEN ASC
);

/*==============================================================*/
/* Table: LAPORAN_ABSENP                                        */
/*==============================================================*/
create table LAPORAN_ABSENP 
(
   ID_LAPABSEN          integer                        not null,
   ID_ABSEN             integer                        null,
   ID_MANAGER           integer                        null,
   constraint PK_LAPORAN_ABSENP primary key (ID_LAPABSEN)
);

/*==============================================================*/
/* Index: LAPORAN_ABSENP_PK                                     */
/*==============================================================*/
create unique index LAPORAN_ABSENP_PK on LAPORAN_ABSENP (
ID_LAPABSEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on LAPORAN_ABSENP (
ID_ABSEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on LAPORAN_ABSENP (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: LAPORAN_EVALUASI                                      */
/*==============================================================*/
create table LAPORAN_EVALUASI 
(
   ID_LAPEVAL           integer                        not null,
   ID_MANAGER           integer                        null,
   ID_EVAL              integer                        null,
   constraint PK_LAPORAN_EVALUASI primary key (ID_LAPEVAL)
);

/*==============================================================*/
/* Index: LAPORAN_EVALUASI_PK                                   */
/*==============================================================*/
create unique index LAPORAN_EVALUASI_PK on LAPORAN_EVALUASI (
ID_LAPEVAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on LAPORAN_EVALUASI (
ID_EVAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on LAPORAN_EVALUASI (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: LAPORAN_RESUME                                        */
/*==============================================================*/
create table LAPORAN_RESUME 
(
   ID_LAPRESUME         integer                        not null,
   ID_RESUME            integer                        null,
   ID_MANAGER           integer                        null,
   constraint PK_LAPORAN_RESUME primary key (ID_LAPRESUME)
);

/*==============================================================*/
/* Index: LAPORAN_RESUME_PK                                     */
/*==============================================================*/
create unique index LAPORAN_RESUME_PK on LAPORAN_RESUME (
ID_LAPRESUME ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on LAPORAN_RESUME (
ID_RESUME ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on LAPORAN_RESUME (
ID_MANAGER ASC
);

/*==============================================================*/
/* Table: LOGIN                                               */
/*==============================================================*/
create table LOGIN 
(
   ID_USER              integer                        not null,
   USERNAME             varchar(1024)                  null,
   PASSWORD             varchar(1024)                  null,
   constraint PK_LOGIN primary key (ID_USER)
);

/*==============================================================*/
/* Index: LOGIN_PK                                              */
/*==============================================================*/
create unique index LOGIN_PK on LOGIN (
ID_USER ASC
);

/*==============================================================*/
/* Table: MANAGER                                               */
/*==============================================================*/
create table MANAGER 
(
   ID_MANAGER           integer                        not null,
   ID_USER              integer                        null,
   NAMA_MANAGER         varchar(1024)                  null,
   NO_HP_MANAGER        integer                        null,
   constraint PK_MANAGER primary key (ID_MANAGER)
);

/*==============================================================*/
/* Index: MANAGER_PK                                            */
/*==============================================================*/
create unique index MANAGER_PK on MANAGER (
ID_MANAGER ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on MANAGER (
ID_USER ASC
);

/*==============================================================*/
/* Table: PASIEN                                                */
/*==============================================================*/
create table PASIEN 
(
   ID_PASIEN            integer                        not null,
   ID_RESUME            integer                        null,
   NAMA_PASIEN          varchar(100)                   null,
   TIPE_PASIEN          varchar(10)                    null,
   EMAIL_P              varchar(1024)                  null,
   NO_HP_PASIEN         integer                        null,
   constraint PK_PASIEN primary key (ID_PASIEN)
);

/*==============================================================*/
/* Index: PASIEN_PK                                             */
/*==============================================================*/
create unique index PASIEN_PK on PASIEN (
ID_PASIEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on PASIEN (
ID_RESUME ASC
);

/*==============================================================*/
/* Table: RELATIONSHIP_9                                        */
/*==============================================================*/
create table RELATIONSHIP_9 
(
   ID_RESUME            integer                        not null,
   ID_EVAL              integer                        not null,
   constraint PK_RELATIONSHIP_9 primary key clustered (ID_RESUME, ID_EVAL)
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_PK                                     */
/*==============================================================*/
create unique clustered index RELATIONSHIP_9_PK on RELATIONSHIP_9 (
ID_RESUME ASC,
ID_EVAL ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on RELATIONSHIP_9 (
ID_RESUME ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on RELATIONSHIP_9 (
ID_EVAL ASC
);

/*==============================================================*/
/* Table: RESUME                                                */
/*==============================================================*/
create table RESUME 
(
   ID_RESUME            integer                        not null,
   ID_LAPRESUME         integer                        null,
   ID_PASIEN            integer                        null,
   ID_TERAPIS           integer                        null,
   HASIL_TERAPI         long varchar                   null,
   constraint PK_RESUME primary key (ID_RESUME)
);

/*==============================================================*/
/* Index: RESUME_PK                                             */
/*==============================================================*/
create unique index RESUME_PK on RESUME (
ID_RESUME ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on RESUME (
ID_TERAPIS ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on RESUME (
ID_PASIEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_20_FK on RESUME (
ID_LAPRESUME ASC
);

/*==============================================================*/
/* Table: TERAPIS                                               */
/*==============================================================*/
create table TERAPIS 
(
   ID_TERAPIS           integer                        not null,
   ID_USER              integer                        null,
   NAMA_TERAPIS         varchar(122)                   null,
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
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on TERAPIS (
ID_USER ASC
);

alter table ABSEN
   add constraint FK_ABSEN_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table ABSEN
   add constraint FK_ABSEN_RELATIONS_LAPORAN_ foreign key (ID_LAPABSEN)
      references LAPORAN_ABSENP (ID_LAPABSEN)
      on update restrict
      on delete restrict;

alter table ABSEN
   add constraint FK_ABSEN_RELATIONS_PASIEN foreign key (ID_PASIEN)
      references PASIEN (ID_PASIEN)
      on update restrict
      on delete restrict;

alter table ADMIN
   add constraint FK_ADMIN_RELATIONS_LOGIN foreign key (ID_USER)
      references LOGIN (ID_USER)
      on update restrict
      on delete restrict;

alter table ADMIN
   add constraint FK_ADMIN_RELATIONS_JADWAL foreign key (ID_JADWAL)
      references JADWAL (ID_JADWAL)
      on update restrict
      on delete restrict;

alter table DOKTER
   add constraint FK_DOKTER_RELATIONS_LOGIN foreign key (ID_USER)
      references LOGIN (ID_USER)
      on update restrict
      on delete restrict;

alter table EVALUASI
   add constraint FK_EVALUASI_RELATIONS_LAPORAN_ foreign key (ID_LAPEVAL)
      references LAPORAN_EVALUASI (ID_LAPEVAL)
      on update restrict
      on delete restrict;

alter table EVALUASI
   add constraint FK_EVALUASI_RELATIONS_DOKTER foreign key (ID_DOKTER)
      references DOKTER (ID_DOKTER)
      on update restrict
      on delete restrict;

alter table JADWAL
   add constraint FK_JADWAL_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table JADWAL
   add constraint FK_JADWAL_RELATIONS_PASIEN foreign key (ID_PASIEN)
      references PASIEN (ID_PASIEN)
      on update restrict
      on delete restrict;

alter table LAPORAN_ABSENP
   add constraint FK_LAPORAN__RELATIONS_ABSEN foreign key (ID_ABSEN)
      references ABSEN (ID_ABSEN)
      on update restrict
      on delete restrict;

alter table LAPORAN_ABSENP
   add constraint FK_LAPORAN__RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

alter table LAPORAN_EVALUASI
   add constraint FK_LAPORAN__RELATIONS_EVALUASI foreign key (ID_EVAL)
      references EVALUASI (ID_EVAL)
      on update restrict
      on delete restrict;

alter table LAPORAN_EVALUASI
   add constraint FK_LAPORAN__RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

alter table LAPORAN_RESUME
   add constraint FK_LAPORAN__RELATIONS_RESUME foreign key (ID_RESUME)
      references RESUME (ID_RESUME)
      on update restrict
      on delete restrict;

alter table LAPORAN_RESUME
   add constraint FK_LAPORAN__RELATIONS_MANAGER foreign key (ID_MANAGER)
      references MANAGER (ID_MANAGER)
      on update restrict
      on delete restrict;

alter table MANAGER
   add constraint FK_MANAGER_RELATIONS_LOGIN foreign key (ID_USER)
      references LOGIN (ID_USER)
      on update restrict
      on delete restrict;

alter table PASIEN
   add constraint FK_PASIEN_RELATIONS_RESUME foreign key (ID_RESUME)
      references RESUME (ID_RESUME)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_9
   add constraint FK_RELATION_RELATIONS_RESUME foreign key (ID_RESUME)
      references RESUME (ID_RESUME)
      on update restrict
      on delete restrict;

alter table RELATIONSHIP_9
   add constraint FK_RELATION_RELATIONS_EVALUASI foreign key (ID_EVAL)
      references EVALUASI (ID_EVAL)
      on update restrict
      on delete restrict;

alter table RESUME
   add constraint FK_RESUME_RELATIONS_LAPORAN_ foreign key (ID_LAPRESUME)
      references LAPORAN_RESUME (ID_LAPRESUME)
      on update restrict
      on delete restrict;

alter table RESUME
   add constraint FK_RESUME_RELATIONS_TERAPIS foreign key (ID_TERAPIS)
      references TERAPIS (ID_TERAPIS)
      on update restrict
      on delete restrict;

alter table RESUME
   add constraint FK_RESUME_RELATIONS_PASIEN foreign key (ID_PASIEN)
      references PASIEN (ID_PASIEN)
      on update restrict
      on delete restrict;

alter table TERAPIS
   add constraint FK_TERAPIS_RELATIONS_LOGIN foreign key (ID_USER)
      references LOGIN (ID_USER)
      on update restrict
      on delete restrict;

