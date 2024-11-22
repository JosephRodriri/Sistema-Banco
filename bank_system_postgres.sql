/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     21/11/2024 9:04:05 p. m.                     */
/*==============================================================*/


drop table CLIENTE;

drop table CUENTAS;

drop table EMPLEADOS;

drop table HISTORIAL;

drop table PRESTAMOS;

drop table SUCURSALES;

drop table TARJETA;

drop table TARJETACREDITO;

drop table TARJETADEBITO;

drop table TRANSACCIONES;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_USUARIO           NUMERIC(12,0)        not null,
   NOMBRE               VARCHAR(50)          null,
   EMAIL                VARCHAR(100)         null,
   TELEFONO             NUMERIC(15,0)        null,
   DIRECCION            VARCHAR(100)         null,
   TIPO_USUARIO         VARCHAR(32)          null,
   constraint PK_CLIENTE primary key (ID_USUARIO)
);

/*==============================================================*/
/* Table: CUENTAS                                               */
/*==============================================================*/
create table CUENTAS (
   ID_CUENTA            NUMERIC(12,0)        not null,
   ID_CLIENTE           NUMERIC(12,0)        null,
   ID_TARJETA           NUMERIC(12,0)        null,
   ID_TRANS             NUMERIC(12,0)        null,
   ID_PRESTAMO          NUMERIC(12,0)        null,
   NUMERO_CUENTA        VARCHAR(32)          null,
   SALDO                FLOAT8               null,
   FECHA_APERTURA       DATE                 null,
   ESTADO               BOOL                 null,
   RAZON_SOCIAL         BOOL                 null,
   constraint PK_CUENTAS primary key (ID_CUENTA)
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
   ID_EMPLEADO          VARCHAR(32)          not null,
   ID_SUCURSAL          VARCHAR(32)          null,
   PUESTO               VARCHAR(32)          null,
   FECHA_CONTRATADO     DATE                 null,
   constraint PK_EMPLEADOS primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Table: HISTORIAL                                             */
/*==============================================================*/
create table HISTORIAL (
   ID_HISTORIAL         VARCHAR(32)          not null,
   TIPO_CREDITO         VARCHAR(32)          null,
   MOVIMIENTOS          VARCHAR(32)          null,
   ESTADO               BOOL                 null,
   constraint PK_HISTORIAL primary key (ID_HISTORIAL)
);

/*==============================================================*/
/* Table: PRESTAMOS                                             */
/*==============================================================*/
create table PRESTAMOS (
   ID_PRESTAMO          NUMERIC(12,0)        not null,
   MONTO                FLOAT8               null,
   TASA_INTERES         DECIMAL(15.2)        null,
   FECHA_INICIO         DATE                 null,
   FECHA_FIN            DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_PRESTAMOS primary key (ID_PRESTAMO)
);

/*==============================================================*/
/* Table: SUCURSALES                                            */
/*==============================================================*/
create table SUCURSALES (
   ID_SUCURSAL          VARCHAR(32)          not null,
   ID_EMPLEADO          VARCHAR(32)          null,
   NOMBRE               VARCHAR(50)          null,
   DIRECCION            VARCHAR(100)         null,
   TELEFONO             NUMERIC(15,0)        null,
   constraint PK_SUCURSALES primary key (ID_SUCURSAL)
);

/*==============================================================*/
/* Table: TARJETA                                               */
/*==============================================================*/
create table TARJETA (
   ID_TARJETA           NUMERIC(12,0)        not null,
   ID_TARJETA_CREDITO   VARCHAR(32)          null,
   ID_TARJETA_DEBITO    VARCHAR(32)          null,
   TIPO_TARJETA         BOOL                 null,
   constraint PK_TARJETA primary key (ID_TARJETA)
);

/*==============================================================*/
/* Table: TARJETACREDITO                                        */
/*==============================================================*/
create table TARJETACREDITO (
   ID_TARJETA_CREDITO   VARCHAR(32)          not null,
   NUMERO_TARJETA       NUMERIC(16,0)        null,
   LIMITE_CREDITO       FLOAT8               null,
   SALDO_ACTUAL         FLOAT8               null,
   FECHA_EMICION        DATE                 null,
   FECHA_VENCIMIENTO    DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_TARJETACREDITO primary key (ID_TARJETA_CREDITO)
);

/*==============================================================*/
/* Table: TARJETADEBITO                                         */
/*==============================================================*/
create table TARJETADEBITO (
   ID_TARJETA_DEBITO    VARCHAR(32)          not null,
   NUMERO_TARJETA       NUMERIC(16,0)        null,
   SALDO_ACTUAL         FLOAT8               null,
   FECHA_VENCIMIENTO    DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_TARJETADEBITO primary key (ID_TARJETA_DEBITO)
);

/*==============================================================*/
/* Table: TRANSACCIONES                                         */
/*==============================================================*/
create table TRANSACCIONES (
   ID_TRANS             NUMERIC(12,0)        not null,
   TIPO_TRANS           VARCHAR(32)          null,
   MONTO                FLOAT8               null,
   FECHA                DATE                 null,
   CUENTA_DESTINO_ID    VARCHAR(32)          null,
   constraint PK_TRANSACCIONES primary key (ID_TRANS)
);

alter table CUENTAS
   add constraint FK_CUENTAS_REFERENCE_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_USUARIO)
      on delete restrict on update restrict;

alter table CUENTAS
   add constraint FK_CUENTAS_REFERENCE_TARJETA foreign key (ID_TARJETA)
      references TARJETA (ID_TARJETA)
      on delete restrict on update restrict;

alter table CUENTAS
   add constraint FK_CUENTAS_REFERENCE_TRANSACC foreign key (ID_TRANS)
      references TRANSACCIONES (ID_TRANS)
      on delete restrict on update restrict;

alter table CUENTAS
   add constraint FK_CUENTAS_REFERENCE_PRESTAMO foreign key (ID_PRESTAMO)
      references PRESTAMOS (ID_PRESTAMO)
      on delete restrict on update restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_SUCURSAL foreign key (ID_SUCURSAL)
      references SUCURSALES (ID_SUCURSAL)
      on delete restrict on update restrict;

alter table SUCURSALES
   add constraint FK_SUCURSAL_REFERENCE_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table TARJETA
   add constraint FK_TARJETA_REFERENCE_TARJETAC foreign key (ID_TARJETA_CREDITO)
      references TARJETACREDITO (ID_TARJETA_CREDITO)
      on delete restrict on update restrict;

alter table TARJETA
   add constraint FK_TARJETA_REFERENCE_TARJETAD foreign key (ID_TARJETA_DEBITO)
      references TARJETADEBITO (ID_TARJETA_DEBITO)
      on delete restrict on update restrict;

