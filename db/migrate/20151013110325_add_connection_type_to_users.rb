class AddConnectionTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :connection_type, :string
  end
end
