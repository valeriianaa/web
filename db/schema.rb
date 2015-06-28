# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150628023810) do

  create_table "asiento_de_servicios", force: :cascade do |t|
    t.integer  "nro",        limit: 4
    t.boolean  "estado",     limit: 1
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "ciudades", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "datos_de_pasajes", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "asiento_de_servicio_id", limit: 4
    t.integer  "pasajero_id",            limit: 4
  end

  add_index "datos_de_pasajes", ["asiento_de_servicio_id"], name: "index_datos_de_pasajes_on_asiento_de_servicio_id", using: :btree
  add_index "datos_de_pasajes", ["pasajero_id"], name: "index_datos_de_pasajes_on_pasajero_id", using: :btree

  create_table "itinerarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "paradas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "direccion",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pasajeros", force: :cascade do |t|
    t.string   "dni",        limit: 255
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.date     "fecha"
    t.time     "horaSalida"
    t.time     "horaLlegada"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipo_de_servicios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "unidades", force: :cascade do |t|
    t.integer  "nro",          limit: 4
    t.integer  "cantAsientos", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "datos_de_pasajes", "asiento_de_servicios"
  add_foreign_key "datos_de_pasajes", "pasajeros"
end
