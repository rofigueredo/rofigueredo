--------------- Vista para las ubicaciones --------------------------
SELECT f.id_fac_llamada as "Id Llamada",
		f.id_direccion_blanco_inicio,
		f.id_direccion_interloc_fin,
		dbi.pais as "Pais Origen", 
		dbi.departamento as "Departamento Origen", 
		dbi.ciudad as "Ciudad Origen",
		dbi.longitud,
		dbi.latitud,
		dli.pais as "Pais Destino", 
		dli.departamento as "Departamento Destino", 
		dli.ciudad as "Ciudad Destino",
		dli.longitud Longitud_Destino,
		dli.latitud latitud_Destino
FROM fac_llamada f JOIN dim_direccion dbi 
					 ON f.id_direccion_blanco_inicio = dbi.id_direccion
				   JOIN dim_direccion dli 
					 ON f.id_direccion_interloc_fin = dli.id_direccion
ORDER BY 1;
----------- Ubicacion Origen ---------------------
SELECT f1.id_fac_llamada as "Id Llamada",
		f1.id_direccion_blanco_inicio,
		dbi.pais as "Pais Origen", 
		dbi.departamento as "Departamento Origen", 
		dbi.ciudad as "Ciudad Origen",
		dbi.longitud,
		dbi.latitud
FROM fac_llamada f1 JOIN dim_direccion dbi 
					 ON f1.id_direccion_blanco_inicio = dbi.id_direccion LIMIT 10

---------- Ubicacion Destino ---------------------
SELECT f2.id_fac_llamada as "Id Llamada b",
		f2.id_direccion_interloc_fin,
		dli.pais as "Pais Destino", 
		dli.departamento as "Departamento Destino", 
		dli.ciudad as "Ciudad Destino",
		dli.longitud Longitud_Destino,
		dli.latitud latitud_Destino
FROM fac_llamada f2 JOIN dim_direccion dli 
					 ON f2.id_direccion_interloc_fin = dli.id_direccion LIMIT 10