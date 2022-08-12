 SELECT f.id_fac_llamada AS "Id Llamada",
    f.id_direccion_blanco_inicio,
    f.id_direccion_interloc_fin,
    dbi.pais AS "Pais Origen",
    dbi.departamento AS "Departamento Origen",
    dbi.ciudad AS "Ciudad Origen",
    dbi.longitud,
    dbi.latitud,
    dli.pais AS "Pais Destino",
    dli.departamento AS "Departamento Destino",
    dli.ciudad AS "Ciudad Destino",
    dli.longitud AS longitud_destino,
    dli.latitud AS latitud_destino
   FROM fac_llamada f
     JOIN dim_direccion dbi ON f.id_direccion_blanco_inicio = dbi.id_direccion
     JOIN dim_direccion dli ON f.id_direccion_interloc_fin = dli.id_direccion
  ORDER BY f.id_fac_llamada;
