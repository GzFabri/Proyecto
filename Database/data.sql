-- Inserts tablas independientes 

INSERT INTO Proyecto_IngeniaCore.acción_soporte (nombre) VALUES
('Registro de Ticket'),
('Asignación de Caso'),
('Diagnóstico del Problema'),
('Ejecución de Pruebas'),
('Escalamiento de Caso'),
('Solicitud de Información Adicional'),
('Aplicación de Solución'),
('Seguimiento al Caso'),
('Confirmación con el Cliente'),
('Cierre del Ticket'),
('Reapertura del Ticket'),
('Documentación de la Solución'),
('Capacitación del Usuario'),
('Mantenimiento Preventivo'),
('Notificación al Cliente'),
('Implementación de Mejora'),
('Derivación a Otro Departamento');

INSERT INTO Proyecto_IngeniaCore.ans (nombre, abreviatura, descripcion
) VALUES 
('Incidencia Basica', 'T1', 'soporte front-end o soporte help desk. Es el nivel de soporte inicial cuando surgen problemas técnicos y se encargan de resolver incidencias básicas del cliente.'),
('Problemas Complejos', 'T2', 'Se encargan de tareas como la resolución y diagnóstico de problemas más complejos que no se pudieron solucionar en el nivel 1.'),
('Apoyo de alto nivel', 'T3',  'soporte de back-end o soporte de alto nivel. Es el nivel encargado de la solución de problemas que requieren el trabajo minucioso y especializado de un equipo técnico.');

INSERT INTO Proyecto_IngeniaCore.complejidad (nombre, descripción) VALUES ('Trival', 'Tarea muy simple, menos de 30 minutos.'),
('Muy baja', 'Tarea sencilla, menos de 2 horas.'),
('Baja', 'Requiere algo de análisis, de 2 a 4 horas.'),
('Media', 'Trabajo moderado, de 4 a 8 horas.'),
('Alta', 'Requiere coordinación con otros equipos, hasta 2 días.'),
('Muy Alta', 'Trabajo complejo con riesgos, de 3 a 5 días.'),
('Crítica', 'Proyecto crítico o con alto nivel de incertidumbre.');

INSERT INTO Proyecto_IngeniaCore.estado (nombre) VALUES
('En Diseño'),
('En Desarrollo'),
('En Prueba'),
('Rechazado'),
('En Analisis'),
('Aprobado'),
('Implementado'),
('En Revisión'),
('Bloqueado'),
('Requiere Ajustes'),
('Pendiente'),
('Completado');

INSERT INTO Proyecto_IngeniaCore.estado_contrato (nombre, fecha_inicio, fecha_final) VALUES 
('Vigente', NULL, NULL),
('No vigente', NULL, NULL);

INSERT INTO Proyecto_IngeniaCore.estado_servicio (nombre) VALUES
('Al dia'),
('Con deuda parcial'),
('Moroso'),
('En negociación'),
('Con financiamiento'),
('Suspendido'), 
('Inactivo'),
('Cliente VIP');

INSERT INTO Proyecto_IngeniaCore.estado_proyecto (nombre) VALUES
('En Diseño'),
('En Desarrollo'),
('En Prueba'),
('Finalizado'),
('Cancelado');

INSERT INTO Proyecto_IngeniaCore.estado_requerimiento (nombre) VALUES
('Pendiente'),
('En Analisis'),
('Aprobado'),
('En Desarrollo'),
('En Pruebas'),
('Implementado'),
('En Monitoreo'),
('Cerrado'),
('Rechazado'),
('En Espera');

INSERT INTO Proyecto_IngeniaCore.estado_tarea (nombre) VALUES
('Pendiente'),
('En Progreso'),
('Bloqueado'),
('En Espera de Información'),
('Escalado'),
('En Prueba'),
('Requiere Ajustes'),
('Completado'),
('Cancelado');

INSERT INTO Proyecto_IngeniaCore.estado_soporte (nombre) VALUES 
('Nuevo'),
('En Revisión'),
('En Proceso'),
('Escalado'),
('En espera de información'),
('Resuelto'),
('Cerrado'),
('Reabierto'),
('Cancelado');

INSERT INTO Proyecto_IngeniaCore.estado_usuario (nombre) VALUES
('Activo'),
('Inactivo');

INSERT INTO Proyecto_IngeniaCore.etiqueta (nombre)
VALUES
('Código fuente'),
('Algoritmos'),
('Interfaz_usuario'),
('Base_datos'),
('Backend'),
('Frontend'),
('Sistema_operativo'),
('Apis'),
('Frameworks'),
('Seguridad');

INSERT INTO Proyecto_IngeniaCore.fase (nombre)
VALUES
('Incio'),
('Planificación'),
('Ejecución'),
('Cierre');

INSERT INTO Proyecto_IngeniaCore.notificación (nombre)
VALUES
('Confirmación de Ticket Creado'),
('Actualización del Ticket'),
('Resolución de Ticket'),
('Ticket Escalado'),
('Recordatorio de Cierre de Ticket'),
('Notificación de Mantenimiento Programado'),
('Alerta de Problema Técnico'),
('Confirmación de Cambio Solicitado'),
('Encuesta de Satisfacción'),
('Reactivación de Servicio');

INSERT INTO Proyecto_IngeniaCore.pais (indicativo, nombre)
VALUES 
('57', 'Colombia'),
('54',' Argentina'),
('55', 'Brasil'),
('57', 'Bolivia'),
('506', 'Costa Rica'),
('53', 'Cuba'),
('593', 'Ecuador'),
('502', 'Guatemala'),
('504', 'Honduras'),
('503', 'El Salvador'),
('509', 'Haití'),
('52', 'Mexico'),
('505', 'Nicaragua'),
('507', 'Panamá'),
('595', 'Paraguay'),
('51', 'Perú'),
('598', 'Uruguay'),
('58', 'Venezuela');

INSERT INTO Proyecto_IngeniaCore.permisos (nombre) VALUES
('Ver'),
('Crear'),
('Eliminar'),
('Aprobar'),
('Rechazar'),
('Actualizar'),
('Asignar'),
('Configurar Sistemas'),
('Imprimir'),
('Lectura');

INSERT INTO Proyecto_IngeniaCore.prioridad (nombre)
VALUES
('Alta'),
('Media'),
('Baja');

INSERT INTO Proyecto_IngeniaCore.rol (nombre) VALUES 
('Gerente de Proyecto (Project Manager - PM)'),
('Scrum Master'),
('Product Owner (PO)'),
('Líder Técnico (Tech Lead)'),
('Arquitecto de Software'),
('Desarrollador Backend'),
('Desarrollador Frontend'),
('Analista de Negocio (Business Analyst - BA)'),
('Tester / QA Engineer'),
('Administrador de Base de Datos (DBA)');

INSERT INTO Proyecto_IngeniaCore.servicio (nombre) VALUES
('Consultoría en Gestión de Proyectos'),
('Desarrollo de Software a Medida'),
('Implementación de Metodologías Ágiles'),
('Gestión de Integraciones y APIs'),
('Optimización y Mejora de Procesos'),
('Gestión de Infraestructura y DevOps'),
('Monitoreo y Control de Proyectos'),
('Capacitación en Gestión de Proyectos'),
('Seguridad y Cumplimiento Normativo'),
('Soporte y Mantenimiento de Software');

INSERT INTO Proyecto_IngeniaCore.tipo_documento (nombre, abreviatura) VALUES
('Cedula de Ciudadania','C.C.'),
('Pasaporte', 'P.P.'),
('Numero Identificacion Tibutario', 'NIT'),
('Cedula de Extranjeria', 'C.E.');

INSERT INTO Proyecto_IngeniaCore.tipo_usuario (nombre)
VALUES 
('Interno'),
('Externo');

-- Inserts tablas dependientes

INSERT INTO Proyecto_IngeniaCore.ciudad (id, pais_id, nombre) 
VALUES
(1, 1, 'Bogotá'),
(2, 1, 'Medellín'),
(3, 1, 'Cali'),
(4, 1, 'Barranquilla'),
(5, 1, 'Cartagena'),
(6, 1, 'Cúcuta'),
(7, 1, 'Bucaramanga'),
(8, 1, 'Pereira'),
(9, 1, 'Santa Marta'),
(10, 1, 'Ibagué'),
(11, 1, 'Manizales'),
(12, 1, 'Villavicencio'),
(13, 1, 'Neiva'),
(14, 1, 'Pasto'),
(15, 1, 'Armenia'),
(16, 1, 'Montería'),
(17, 1, 'Valledupar'),
(18, 1, 'Sincelejo'),
(19, 1, 'Popayán'),
(20, 1, 'Tunja'),
(21, 1, 'Floridablanca'),
(22, 1, 'Riohacha'),
(23, 1, 'Dosquebradas'),
(24, 1, 'Tuluá'),
(25, 1, 'Envigado'),
(26, 1, 'Itagüí'),
(27, 1, 'Palmira'),
(28, 1, 'Buenaventura'),
(29, 1, 'Soledad'),
(30, 1, 'Bello'),
(31, 1, 'Girardot'),
(32, 1, 'Zipaquirá'),
(33, 1, 'Fusagasugá'),
(34, 1, 'Facatativá'),
(35, 1, 'Chía'),
(36, 1, 'Mosquera'),
(37, 1, 'Funza'),
(38, 1, 'Madrid'),
(39, 1, 'Soacha'),
(40, 1, 'Florencia'),
(41, 1, 'Yopal'),
(42, 1, 'Quibdó'),
(43, 1, 'Arauca'),
(44, 1, 'Mocoa'),
(45, 1, 'Mitú'),
(46, 1, 'San José del Guaviare'),
(47, 1, 'Puerto Carreño'),
(48, 1, 'Leticia'),
(49, 1, 'Apartadó'),
(50, 1, 'Turbo'),
(51, 1, 'Magangué'),
(52, 1, 'Maicao'),
(53, 1, 'Sogamoso'),
(54, 1, 'Duitama'),
(55, 1, 'Ocaña'),
(56, 1, 'Caucasia'),
(57, 1, 'La Dorada'),
(58, 1, 'Pitalito'),
(59, 1, 'Ipiales'),
(60, 1, 'San Andrés'),
(61, 1, 'Rionegro'),
(62, 1, 'Copacabana'),
(63, 1, 'Candelaria'),
(64, 1, 'Jamundí'),
(65, 1, 'Yumbo'),
(66, 1, 'El Cerrito'),
(67, 1, 'Puerto Tejada'),
(68, 1, 'Santander de Quilichao'),
(69, 1, 'Corozal'),
(70, 1, 'Sahagún'),
(71, 1, 'Lorica'),
(72, 1, 'Cereté'),
(73, 1, 'Montelíbano'),
(74, 1, 'Tierralta'),
(75, 1, 'Planeta Rica'),
(76, 1, 'Garzón'),
(77, 1, 'La Plata'),
(78, 1, 'Campoalegre'),
(79, 1, 'Gigante'),
(80, 1, 'Villanueva'),
(81, 1, 'San Juan del Cesar'),
(82, 1, 'Fonseca'),
(83, 1, 'Barrancas'),
(84, 1, 'Agustín Codazzi'),
(85, 1, 'El Copey'),
(86, 1, 'La Paz'),
(87, 1, 'Curumaní'),
(88, 1, 'San Martín'),
(89, 1, 'Puerto Berrío'),
(90, 1, 'Cisneros'),
(91, 1, 'Amagá'),
(92, 1, 'Andes'),
(93, 1, 'Jardín'),
(94, 1, 'Támesis'),
(95, 1, 'Santa Rosa de Osos'),
(96, 1, 'Yarumal'),
(97, 1, 'Donmatías'),
(98, 1, 'San Pedro de los Milagros'),
(99, 1, 'Marinilla'),
(100, 1, 'Guarne'),
(101, 1, 'El Santuario'),
(102, 1, 'La Ceja'),
(103, 1, 'Sonsón'),
(104, 1, 'Aguadas'),
(105, 1, 'Filandia'),
(106, 1, 'Belén de Umbría'),
(107, 1, 'Marsella'),
(108, 1, 'Mistrató'),
(109, 1, 'Pueblo Rico'),
(110, 1, 'Santuario'),
(111, 1, 'Quinchía'),
(112, 1, 'La Virginia'),
(113, 1, 'Apía'),
(114, 1, 'Anserma'),
(115, 1, 'Riosucio'),
(116, 1, 'Supía'),
(117, 1, 'Aranzazu'),
(118, 1, 'Salamina'),
(119, 1, 'Neira'),
(120, 1, 'Pácora'),
(121, 1, 'Samaná'),
(122, 1, 'Norcasia'),
(123, 1, 'Victoria'),
(124, 1, 'La Merced'),
(125, 1, 'Pensilvania'),
(126, 1, 'Marquetalia'),
(127, 1, 'Manzanares'),
(128, 1, 'Herveo'),
(129, 1, 'Murillo'),
(130, 1, 'Santa Isabel'),
(131, 1, 'Coyaima'),
(132, 1, 'Natagaima'),
(133, 1, 'Purificación'),
(134, 1, 'Chaparral'),
(135, 1, 'Planadas'),
(136, 1, 'Ortega'),
(137, 1, 'Suárez'),
(138, 1, 'Tuluá'),
(139, 1, 'Roldanillo'),
(140, 1, 'Zarzal'),
(141, 1, 'San Pedro'),
(142, 1, 'Sevilla'),
(143, 1, 'La Unión'),
(144, 1, 'Dagua'),
(145, 1, 'Bugalagrande'),
(146, 1, 'El Águila'),
(147, 1, 'Argelia'),
(148, 1, 'Restrepo'),
(149, 1, 'Toro'),
(150, 1, 'Trujillo');

-- Inserts tablas dependientes

INSERT INTO Proyecto_IngeniaCore.proyecto (estado_proyecto_id, fase_id, nombre, descripción, fecha_inicio_vigente, fecha_final_vigente) VALUES 
(1, 2, 'Plataforma de Trazabilidad y Control de Proyectos', 'Plataforma para gestionar el ciclo de vida de los proyectos de desarrollo de software.', '2025-03-01', '2025-03-04'),
(2, 1, 'Gestor de Requerimientos y Cambios', 'Sistema para registrar, aprobar y hacer seguimiento a requerimientos y cambios en proyectos.', '2025-03-05', '2025-03-11'),
(3, 3, 'Automatización de Reportes de Avance', 'Herramienta para generar informes de progreso y cumplimiento de hitos en los proyectos.', '2025-03-12', '2025-03-20'),
(4, 4, 'Sistema de Gestión de Tickets de Soporte', 'Aplicación para registrar y hacer seguimiento a incidencias y solicitudes de clientes.', '2025-03-21', '2025-03-30'),
(2, 2, 'Plataforma de Capacitación en Gestión de Proyectos', 'Portal de formación para mejorar la gestión de proyectos en la empresa.', '2025-04-01', '2025-04-08');

INSERT INTO Proyecto_IngeniaCore.requerimiento (estado_requerimiento_id, proyecto_id, prioridad_id, nombre, descripción, fecha_creación) VALUES
(1, 1, 2, 'Definición del alcance del proyecto', 'Especificar claramente los objetivos, entregables y límites del proyecto.', '2025-03-02'),
(2, 1, 1, 'Identificación de stakeholders', 'Determinar todas las partes interesadas y documentar sus expectativas.', '2025-03-03'),
(1, 2, 3, 'Planificación de recursos', 'Asignar personal, herramientas, presupuesto y tecnologías necesarias.', '2025-03-06'),
(3, 2, 2, 'Gestión de riesgos', 'Identificar posibles problemas y definir estrategias de mitigación.', '2025-03-08'),
(2, 4, 1, 'Seguridad y cumplimiento normativo', 'Implementar medidas de seguridad y cumplimiento con regulaciones (ISO, GDPR, etc.).', '2023-03-10'),
(1, 3, 2, 'Capacitación y adopción del sistema', 'Planificar entrenamientos para usuarios y equipos técnicos.', '2025-03-12'),
(2, 3, 1, 'Desarrollo de API de autenticacion', 'Implementar autenticación de usuarios (tarea)', '2025-03-14'),
(3, 3, 2, 'Monitoreo y mantenimiento post-producción', 'Implementar herramientas de observabilidad para detectar fallos en tiempo real.', '2025-03-16'),
(2, 4, 3, 'Optimización del rendimiento', 'Mejorar tiempos de respuesta del frontend (tarea)', '2025-03-18'),
(1, 4, 2, 'Documentacion y mantenimiento del código', 'Documentar la estructura de la base de datos (tarea)', '2025-03-20');

INSERT INTO Proyecto_IngeniaCore.tarea (requerimiento_id, estado_tarea_id, etiqueta_id, complejidad_id, comentario, fecha_estimacion, fecha_finalizacion) VALUES
(1, 6, 6, 6, 'Tarea iniciada con alta complejidad, requiere revisión', '2025-03-01', '2025-03-04'),
(3, 4, 4, 6, 'Tarea completada exitosamente', '2025-03-05', '2025-03-11'),
(7, 5, 5, 4, 'Desarrollo en curso, pendiente de validación', '2025-03-12', '2025-03-20'),
(9, 6, 6, 3, 'Tarea pausada, requiere ajustes antes de continuar', '2025-03-21', '2025-03-30'),
(10, 4, 4, 6, 'Finalizada, validar resultados finales', '2025-03-04', '2025-03-11');

INSERT INTO Proyecto_IngeniaCore.usuario (tipo_documento_id, tipo_usuario_id, estado_usuario_id, ciudad_id, numero_identificacion, primer_nombre, segundo_nombre, primer_apellido,segundo_apellido, celular, correo, direccion) VALUES
(1, 1, 1, 28,'1104937809', 'Laura', 'Camila', 'Forero', 'Mogollon', '3245624517', 'cmogollon281@gmail.com', 'Cr1 sur # 37A54  Martínez'),
(1, 1, 1, 30, '1106632399', 'Nicole', 'Danithza', 'Larrotha', 'Zea', '3244912904', 'ndlarrota01@gmail.com', 'Calle 16 #1-39 la Gaviota'),
(1, 1, 1, 15, '1110533146', 'Fabri', 'Hernando', 'Gonzalez', 'Amaya', '3228492775', 'faher93@gmail.com', 'Urbanizacion Albania'),
(1, 1, 1, 28, '1110533146', 'Diego', 'Mauricio', 'Gomez', 'Rodriguez', '3246683011', 'ggyt12830@gmail.com', 'Calle 8-67  Belen'),
(1, 1, 1, 5, '1107008655', 'Lina', 'Maria', 'Peña', 'Barragan', '3138021125', 'penabarraganmaria9@gmail.com', 'Topacio'),
(1, 1, 1, 28, '1104936581', 'Danna', 'Valentina', 'Gomez', 'Gonzalez', '3222706759', 'danavalegg15@gmail.com', 'Calle 8 #12-41 20 de julio'),
(1, 1, 1, 10, '1091532024', 'Cristian', 'Fernando', 'Delgado', 'Carvajalino', '3156018384', 'criferdel10@gmail.com', 'Mz 5 casa 15 reservas de santa rita'),
(1, 1, 1, 28, '1110536414', 'Eimy', 'Lorena', 'Rodriguez', 'Blandon', '3133416113', 'lorenitar.1518@gmail.com', 'Calle 117 n  18-64 sur conjunto cimara'),
(1, 1, 1, 28, '38364158', 'Erika', 'Lorena', 'Devia', 'Prada', '3227360630', 'lorenaprada4981@gmail.com', 'Mz f Cs 7  Jardin Atolsure'),
(1, 2, 1, 28, '1110458039', 'Juan', 'Sebastian', 'Vaca', 'Devia', '3197226349', 'vakito@gmail.com', 'Mz c Cs 5 Las America'),
(1, 2, 1, 2, '14239050', 'Hernando', 'Camilo', 'Serna', 'Sierra', '3156234789', 'hervasu@gmail.com', 'Cra 1 No 4-23'),
(1, 2, 1, 5, '1110234677', 'Diana', 'Mayerli', 'Prada', 'Segura', '3156789734', 'nayesegura@gmail.com', 'CRa 5 6-24');

INSERT INTO Proyecto_IngeniaCore.cliente (tipo_documento_id, ciudad_id, estado_contrato_id, notificación_id, numero_identificacion, nombre, direccion, telefono, celular, correo) VALUES
(3, 3, 1, 2, '890706413', 'Tecnicentro Llantas Quinta Avenida', 'Cra 5 27-01', '608 2678902', '3018907652', 'tecnicentrollantasquintaavenid@gmail.com'),
(3, 5, 2, 1, '901840837', 'A&L System Solution', 'Avenida Principal 4-56', '601 5156789', '3052660662', 'info@systemsolution.com'),
(3, 1, 1, 3, '900488472', 'DCM System S.A.S', 'Carrera 7 3-89', '605 5719087', '3209806543', 'info@dcmsystem.com'),
(3, 1, 2, 1, '901068202', 'Latin Games Software S.A.S', 'Cra 3 92A-60', '601 5234567', '3124567890', 'info@latingamesoftware.com'),
(3, 2, 1, 1, '901601313', 'Spine Software Colombia S.A.S', 'Calle 13 6-60 ', '602 4876466', '3224566789', 'info@spinesoftware.com');

INSERT INTO Proyecto_IngeniaCore.ticket_tarea (usuario_id, tarea_id, estado_id, fecha_creacion, fecha_finalizacion) VALUES
(1, 1, 1, '2025-03-01', '2025-03-04'),
(2, 2, 4, '2025-03-05', '2025-03-11'),
(3, 3, 2, '2025-03-12', '2025-03-20'),
(4, 4, 3, '2025-03-21', '2025-03-30'),
(5, 5, 1, '2025-03-04', '2025-03-11');

INSERT INTO Proyecto_IngeniaCore.usuario_rol (usuario_id, rol_id) VALUES
(4, 2),
(1, 3),
(2, 4),
(3, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

INSERT INTO Proyecto_IngeniaCore.cliente_servicio (cliente_id, servicio_id, estado_servicio_id, fecha_inicial, fecha_final) VALUES
(1, 2, 1, '2024-01-10', '2024-12-31'),
(2, 5, 3, '2024-02-15', '2024-11-30'),
(3, 8, 6, '2024-03-20', '2024-03-20'),
(4, 4, 2, '2024-04-25', '2024-10-25'),
(5, 10, 8, '2024-05-30', '2024-05-30');

INSERT INTO Proyecto_IngeniaCore.ticket_soporte (cliente_servicio_id, usuario_id, estado_soporte_id, ans_id) VALUES
(1, 10, 1, 1),
(3, 11, 3, 2),
(5, 12, 5, 3),
(2, 10, 7, 1),
(4, 11, 2, 2);

INSERT INTO Proyecto_IngeniaCore.ticket_soporte_detalle (ticket_soporte_id, usuario_id, accion_soporte_id, descripcion, fecha_hora_inicio, fecha_hora_final) VALUES
(1, 1, 3, 'Diagnóstico inicial', '2025-03-12 8:30:00', '2025-03-12 9:30:00'),
(2, 2, 7, 'Aplicación de solución', '2025-03-12 10:00:00', '2025-03-12 11:15:00'),
(3, 3, 8, 'Seguimiento del caso', '2025-03-12 12:00:00', '2025-03-12 12:45:00'),
(4, 4, 10, 'Confirmación con cliente', '2025-03-12 14:00:00', '2025-03-12 14:30:00'),
(5, 5, 12, 'Documentación de la solución', '2025-03-12 15:00:00', '2025-03-12 15:45:00');