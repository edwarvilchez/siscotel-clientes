
ActiveRecord::Schema[7.0].define(version: 2023_03_03_204351) do
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
    t.integer "user_id"
    t.index ["user_id"], name: "index_clientes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
