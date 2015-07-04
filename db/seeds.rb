Ciudad.create!([
  {nombre: "Posadas"},
  {nombre: "Apóstoles"},
  {nombre: "San José"},
  {nombre: "Iguazu"}
])
Pasajero.create!([
  {dni: "12345678", nombre: "Pepe"},
  {dni: "23456789", nombre: "Jose"},
  {dni: "34567890", nombre: "Laura"}
])

Unidad.create!([
  {nro: 8237, cantAsientos: 20},
  {nro: 6218, cantAsientos: 25}
])

Servicio.create!([
  {fecha: "2015-07-03", horaSalida: "2000-01-01 08:00:00", horaLlegada: "2000-01-01 12:00:00", unidad_id: 1, itinerario_id: nil, tipo_de_servicio_id: nil}
])

AsientoDeServicio.create!([
  {nro: 1, estado: true, servicio_id: 1},
  {nro: 2, estado: true, servicio_id: 1},
  {nro: 3, estado: true, servicio_id: 1},
  {nro: 4, estado: true, servicio_id: 1},
  {nro: 5, estado: true, servicio_id: 1},
  {nro: 6, estado: true, servicio_id: 1},
  {nro: 7, estado: true, servicio_id: 1},
  {nro: 8, estado: true, servicio_id: 1},
  {nro: 9, estado: true, servicio_id: 1},
  {nro: 10, estado: true, servicio_id: 1},
  {nro: 11, estado: true, servicio_id: 1},
  {nro: 12, estado: true, servicio_id: 1},
  {nro: 13, estado: true, servicio_id: 1},
  {nro: 14, estado: true, servicio_id: 1},
  {nro: 15, estado: true, servicio_id: 1},
  {nro: 16, estado: true, servicio_id: 1},
  {nro: 17, estado: true, servicio_id: 1},
  {nro: 18, estado: true, servicio_id: 1},
  {nro: 19, estado: true, servicio_id: 1},
  {nro: 20, estado: true, servicio_id: 1}
])

