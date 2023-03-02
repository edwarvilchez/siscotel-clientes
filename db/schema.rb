

ActiveRecord::Schema[7.0].define(version: 2023_03_02_182343) do
  create_table "clientes", force: :cascade do |t|
    t.string "tipo_persona"
    t.string "nro_doc_id"
    t.date "fecha_emision"
    t.date "fecha_vencimiento"
    t.string "nombre"
    t.string "apellido"
    t.string "correo"
    t.string "telf_ppal"
    t.string "telf_sec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
