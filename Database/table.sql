--Independienes

CREATE TABLE Proyecto_IngeniaCore.tipo_documento (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	abreviatura varchar(10) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT tipo_documento_pk PRIMARY KEY (id)
);




CREATE TABLE Proyecto_IngeniaCore.tipo_usuario (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	CONSTRAINT tipo_usuario_pk PRIMARY KEY (id)
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);



CREATE TABLE Proyecto_IngeniaCore.pais (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	indicativo INT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT pais_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_usuario (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT estado_usuario_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_contrato (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	fecha_inicio DATE NULL,
	fecha_final DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT estado_contrato_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.notificación (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT notificación_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT estado_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.prioridad (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT prioridad_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.rol (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT rol_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.permisos (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT permisos_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_requerimiento (
id BIGINT UNSIGNED auto_increment NOT NULL,
nombre varchar(100) NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT estado_requerimiento_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_proyecto (
id BIGINT UNSIGNED auto_increment NOT NULL,
nombre varchar(100) NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT estado_proyecto_pk PRIMARY KEY (id)
);


CREATE TABLE Proyecto_IngeniaCore.estado_tarea (
id BIGINT UNSIGNED auto_increment NOT NULL,
nombre varchar(100) NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT estado_tarea_pk PRIMARY KEY (id)
);


CREATE TABLE Proyecto_IngeniaCore.fase (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT fase_pk PRIMARY KEY (id)
);


CREATE TABLE Proyecto_IngeniaCore.etiqueta (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT etiqueta_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.complejidad (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	descripción TEXT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT complejidad_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.servicio (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT servicio_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_servicio (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT estado_servicio_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.estado_soporte (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT estado_soporte_pk PRIMARY KEY (id)
);



CREATE TABLE Proyecto_IngeniaCore.ans (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	abreviatura varchar(10) NULL,
	descripción TEXT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ans_pk PRIMARY KEY (id)
);

CREATE TABLE Proyecto_IngeniaCore.acción_soporte (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT acción_soporte_pk PRIMARY KEY (id)
);


--Dependientes

CREATE TABLE Proyecto_IngeniaCore.ciudad (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	pais_id BIGINT UNSIGNED NULL,
	nombre varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ciudad_pk PRIMARY KEY (id),
	CONSTRAINT ciudad_pais_FK FOREIGN KEY (pais_id) REFERENCES Proyecto_IngeniaCore.pais(id)
);


CREATE TABLE Proyecto_IngeniaCore.proyecto (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	estado_proyecto_id BIGINT UNSIGNED NULL,
	fase_id BIGINT UNSIGNED NULL,
	nombre varchar(150) NULL,
	descripción TEXT NULL,
	fecha_inicio_vigente DATE NULL,
	fecha_final_vigente DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT proyecto_pk PRIMARY KEY (id),
	CONSTRAINT proyecto_estado_proyecto_FK FOREIGN KEY (estado_proyecto_id) REFERENCES Proyecto_IngeniaCore.estado_proyecto(id),
	CONSTRAINT proyecto_fase_FK FOREIGN KEY (fase_id) REFERENCES Proyecto_IngeniaCore.fase(id)
);

CREATE TABLE Proyecto_IngeniaCore.requerimiento (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	estado_requerimiento_id BIGINT UNSIGNED NULL,
	proyecto_id BIGINT UNSIGNED NULL,
	prioridad_id BIGINT UNSIGNED NULL,
	nombre varchar(150) NULL,
	descripción TEXT NULL,
	fecha_creación DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT requerimiento_pk PRIMARY KEY (id)
	CONSTRAINT requerimiento_estado_requerimiento_FK FOREIGN KEY (estado_requerimiento_id) REFERENCES Proyecto_IngeniaCore.estado_requerimiento(id),
	CONSTRAINT requerimiento_proyecto_FK FOREIGN KEY (proyecto_id) REFERENCES Proyecto_IngeniaCore.proyecto(id),
	CONSTRAINT requerimiento_prioridad_FK FOREIGN KEY (prioridad_id) REFERENCES Proyecto_IngeniaCore.prioridad(id)
);


CREATE TABLE Proyecto_IngeniaCore.tarea (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	requerimiento_id BIGINT UNSIGNED NULL,
	estado_tarea_id BIGINT UNSIGNED NULL,
	etiqueta_id BIGINT UNSIGNED NULL,
	complejidad_id BIGINT UNSIGNED NULL,
	comentario TEXT NULL,
	fecha_estimacion DATE NULL,
	fecha_finalizacion DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT tarea_pk PRIMARY KEY (id),
	CONSTRAINT tarea_requerimiento_FK FOREIGN KEY (requerimiento_id) REFERENCES Proyecto_IngeniaCore.requerimiento(id),
	CONSTRAINT tarea_estado_tarea_FK FOREIGN KEY (estado_tarea_id) REFERENCES Proyecto_IngeniaCore.estado_tarea(id),
	CONSTRAINT tarea_etiqueta_FK FOREIGN KEY (etiqueta_id) REFERENCES Proyecto_IngeniaCore.etiqueta(id),
	CONSTRAINT tarea_complejidad_FK FOREIGN KEY (complejidad_id) REFERENCES Proyecto_IngeniaCore.complejidad(id)
);

CREATE TABLE Proyecto_IngeniaCore.usuario (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	tipo_documento_id BIGINT UNSIGNED NULL,
	tipo_usuario_id BIGINT UNSIGNED NULL,
	estado_usuario_id BIGINT UNSIGNED NULL,
	ciudad_id BIGINT UNSIGNED NULL,
	numero_identificacion varchar(100) NULL,
	primer_nombre varchar(100) NULL,
	segundo_nombre varchar(100) NULL,
	primer_apellido varchar(100) NULL,
	segundo_apellido varchar(100) NULL,
	celular varchar(100) NULL,
	correo varchar(150) NULL,
	direccion varchar(150) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT usuario_pk PRIMARY KEY (id),
	CONSTRAINT usuario_tipo_documento_FK FOREIGN KEY (tipo_documento_id) REFERENCES Proyecto_IngeniaCore.tipo_documento(id),
	CONSTRAINT usuario_tipo_usuario_FK FOREIGN KEY (tipo_usuario_id) REFERENCES Proyecto_IngeniaCore.tipo_usuario(id),
	CONSTRAINT usuario_estado_usuario_FK FOREIGN KEY (estado_usuario_id) REFERENCES Proyecto_IngeniaCore.estado_usuario(id),
	CONSTRAINT usuario_ciudad_FK FOREIGN KEY (ciudad_id) REFERENCES Proyecto_IngeniaCore.ciudad(id)
	
);

CREATE TABLE Proyecto_IngeniaCore.cliente (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	tipo_documento_id BIGINT UNSIGNED NULL,
	ciudad_id BIGINT UNSIGNED NULL,
	estado_contrato_id BIGINT UNSIGNED NULL,
	notificación_id BIGINT UNSIGNED NULL,
	numero_identificacion varchar(100) NULL,
	nombre varchar(150) NULL,
	direccion varchar(150) NULL,
	telefono varchar(100) NULL,
	celular varchar(100) NULL,
	correo varchar(100) NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT cliente_pk PRIMARY KEY (id),
	CONSTRAINT cliente_tipo_documento_FK FOREIGN KEY (tipo_documento_id) REFERENCES Proyecto_IngeniaCore.tipo_documento(id),
	CONSTRAINT cliente_ciudad_FK FOREIGN KEY (ciudad_id) REFERENCES Proyecto_IngeniaCore.ciudad(id),
	CONSTRAINT cliente_estado_contrato_FK FOREIGN KEY (estado_contrato_id) REFERENCES Proyecto_IngeniaCore.estado_contrato(id),
	CONSTRAINT cliente_notificación_FK FOREIGN KEY (notificación_id) REFERENCES Proyecto_IngeniaCore.notificación(id)
);

CREATE TABLE Proyecto_IngeniaCore.usuario_rol (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	usuario_id BIGINT UNSIGNED NULL,
	rol_id BIGINT UNSIGNED NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT usuario_rol_pk PRIMARY KEY (id),
	CONSTRAINT usuario_rol_usuario_FK FOREIGN KEY (usuario_id) REFERENCES Proyecto_IngeniaCore.usuario(id),
	CONSTRAINT usuario_rol_rol_FK FOREIGN KEY (rol_id) REFERENCES Proyecto_IngeniaCore.rol(id)
);

CREATE TABLE Proyecto_IngeniaCore.ticket_tarea (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	usuario_id BIGINT UNSIGNED NULL,
	tarea_id BIGINT UNSIGNED NULL,
	estado_id BIGINT UNSIGNED NULL,
	fecha_creacion DATE NULL,
	fecha_finalizacion DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ticket_tarea_pk PRIMARY KEY (id),
	CONSTRAINT ticket_tarea_usuario_FK FOREIGN KEY (usuario_id) REFERENCES Proyecto_IngeniaCore.usuario(id),
	CONSTRAINT ticket_tarea_tarea_FK FOREIGN KEY (tarea_id) REFERENCES Proyecto_IngeniaCore.tarea(id),
	CONSTRAINT ticket_tarea_estado_FK FOREIGN KEY (estado_id) REFERENCES Proyecto_IngeniaCore.estado(id)
);

CREATE TABLE Proyecto_IngeniaCore.ticket_tarea_detalle (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	ticket_tarea_id BIGINT UNSIGNED NULL,
	descripcion TEXT NULL,
	fecha_asignacion DATE NULL,
	fecha_devolucion DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ticket_tarea_detalle_pk PRIMARY KEY (id),
	CONSTRAINT ticket_tarea_detalle_ticket_tarea_FK FOREIGN KEY (ticket_tarea_id) REFERENCES Proyecto_IngeniaCore.ticket_tarea(id)
);

CREATE TABLE Proyecto_IngeniaCore.cliente_servicio (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	cliente_id BIGINT UNSIGNED NULL,
	servicio_id BIGINT UNSIGNED NULL,
	estado_servicio_id BIGINT UNSIGNED NULL,
	fecha_inicial DATE NULL,
	fecha_final DATE NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT cliente_servicio_pk PRIMARY KEY (id),
	CONSTRAINT cliente_servicio_cliente_FK FOREIGN KEY (cliente_id) REFERENCES Proyecto_IngeniaCore.cliente(id),
	CONSTRAINT cliente_servicio_servicio_FK FOREIGN KEY (servicio_id) REFERENCES Proyecto_IngeniaCore.servicio(id),
	CONSTRAINT cliente_servicio_estado_servicio_FK FOREIGN KEY (estado_servicio_id) REFERENCES Proyecto_IngeniaCore.estado_servicio(id)
);

CREATE TABLE Proyecto_IngeniaCore.ticket_soporte (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	cliente_servicio_id BIGINT UNSIGNED NULL,
	usuario_id BIGINT UNSIGNED NULL,
	estado_soporte_id BIGINT UNSIGNED NULL,
	ans_id BIGINT UNSIGNED NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ticket_soporte_pk PRIMARY KEY (id),
	CONSTRAINT ticket_soporte_cliente_servicio_FK FOREIGN KEY (cliente_servicio_id) REFERENCES Proyecto_IngeniaCore.cliente_servicio(id),
	CONSTRAINT ticket_soporte_usuario_FK FOREIGN KEY (usuario_id) REFERENCES Proyecto_IngeniaCore.usuario(id),
	CONSTRAINT ticket_soporte_estado_soporte_FK FOREIGN KEY (estado_soporte_id) REFERENCES Proyecto_IngeniaCore.estado_soporte(id),
	CONSTRAINT ticket_soporte_ans_FK FOREIGN KEY (ans_id) REFERENCES Proyecto_IngeniaCore.ans(id)
);

CREATE TABLE Proyecto_IngeniaCore.ticket_soporte_detalle (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	ticket_soporte_id BIGINT UNSIGNED NULL,
	usuario_id BIGINT UNSIGNED NULL,
	accion_soporte_id BIGINT UNSIGNED NULL,
	descripcion TEXT NULL,
	fecha_hora_inicio DATETIME NULL,
	fecha_hora_final DATETIME NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT ticket_soporte_detalle_pk PRIMARY KEY (id),
	CONSTRAINT ticket_soporte_detalle_ticket_soporte_FK FOREIGN KEY (ticket_soporte_id) REFERENCES Proyecto_IngeniaCore.ticket_soporte(id),
	CONSTRAINT ticket_soporte_detalle_usuario_FK FOREIGN KEY (usuario_id) REFERENCES Proyecto_IngeniaCore.usuario(id),
	CONSTRAINT ticket_soporte_detalle_acción_soporte_FK FOREIGN KEY (accion_soporte_id) REFERENCES Proyecto_IngeniaCore.acción_soporte(id)
);

CREATE TABLE Proyecto_IngeniaCore.item (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	nombre varchar(150) NULL,
	icono varchar(150) NULL,
	item_id BIGINT UNSIGNED NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT item_pk PRIMARY KEY (id),
	CONSTRAINT item_item_FK FOREIGN KEY (item_id) REFERENCES Proyecto_IngeniaCore.item(id)
);

CREATE TABLE Proyecto_IngeniaCore.permiso_item (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	permiso_id BIGINT UNSIGNED NULL,
	item_id BIGINT UNSIGNED NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT permiso_item_pk PRIMARY KEY (id),
	CONSTRAINT permiso_item_permisos_FK FOREIGN KEY (permiso_id) REFERENCES Proyecto_IngeniaCore.permisos(id),
	CONSTRAINT permiso_item_item_FK FOREIGN KEY (item_id) REFERENCES Proyecto_IngeniaCore.item(id)
);

CREATE TABLE Proyecto_IngeniaCore.rol_permiso_item (
	id BIGINT UNSIGNED auto_increment NOT NULL,
	rol_id BIGINT UNSIGNED NULL,
	permiso_id BIGINT UNSIGNED NULL,
	item_id BIGINT UNSIGNED NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT rol_permiso_item_pk PRIMARY KEY (id),
	CONSTRAINT rol_permiso_item_rol_FK FOREIGN KEY (rol_id) REFERENCES Proyecto_IngeniaCore.rol(id),
	CONSTRAINT rol_permiso_item_permisos_FK FOREIGN KEY (permiso_id) REFERENCES Proyecto_IngeniaCore.permisos(id),
	CONSTRAINT rol_permiso_item_item_FK FOREIGN KEY (item_id) REFERENCES Proyecto_IngeniaCore.item(id)
);