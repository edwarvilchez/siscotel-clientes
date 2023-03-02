class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :tipo_persona
      t.string :nro_doc_id
      t.date :fecha_emision
      t.date :fecha_vencimiento
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telf_ppal
      t.string :telf_sec

      t.timestamps
    end
  end
end
