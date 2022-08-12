CREATE VIEW view_fact_llamada  AS
	SELECT f.id_fac_llamada,
		a.nombre AS juez,
		a.tipo_autoridad,
		b.nombre AS blanco,
		b.tipo_blanco,
		tel.numero,
		tel.nombre_operadora,
		o.nombre AS operacion,
		dir.latitud,
		dir.longitud,
		dir.pais,
		dir.departamento,
		dir.ciudad,
		fe.fecha,
		f.fecha_inicio,
		to_char(f.fecha_inicio, 'HH24:MI:ss'::text) AS "HoraInicio",
		f.fecha_fin,
		to_char(f.fecha_fin, 'HH24:MI:ss'::text) AS "HoraFin",
		f.transcripcion,
		f.comentario,
		f.imei,
		f.msisdn,
		f.imsi,
		f.id_caract_llamada
	   FROM fac_llamada f
		 JOIN dim_acreditado a ON f.id_acreditado = a.id_acreditado
		 JOIN dim_blanco b ON f.id_blanco = b.id_blanco
		 JOIN dim_operacion o ON f.id_operacion = o.id_operacion
		 JOIN dim_telefono tel ON f.id_telefono = tel.id_telefono
		 JOIN dim_fecha fe ON f.id_fecha = fe.id_fecha
		 JOIN dim_direccion dir ON dir.id_direccion = f.id_direccion_blanco_inicio;