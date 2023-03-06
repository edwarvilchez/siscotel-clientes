class AddNullFalseToClientesFields < ActiveRecord::Migration[7.0]
  def change
    # definimos las validaciones en la BD
    change_column_null :clientes, :tipo_persona, false
    change_column_null :clientes, :nro_doc_id, false
    change_column_null :clientes, :fecha_emision, false
    change_column_null :clientes, :fecha_vencimiento, false
    change_column_null :clientes, :nombre, false
    change_column_null :clientes, :apellido, false
    change_column_null :clientes, :correo, false
    change_column_null :clientes, :telf_ppal, false
    change_column_null :clientes, :telf_sec, false
  end
end
