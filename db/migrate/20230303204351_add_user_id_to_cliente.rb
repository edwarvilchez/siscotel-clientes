class AddUserIdToCliente < ActiveRecord::Migration[7.0]
  def change
    add_column :clientes, :user_id, :integer
    add_index :clientes, :user_id
  end
end
