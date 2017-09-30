class ClientsRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_roles do |t|
      t.belongs_to :client, index: true
      t.belongs_to :role, index: true
    end
  end
end
