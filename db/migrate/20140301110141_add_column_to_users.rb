class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string, limit: 32, null: false
    add_column :users, :salt, :string, limit: 32, null: false
    add_column :users, :total_depth, :float
    add_column :users, :last_orosnow, :datetime, :null => true
    add_column :users, :lat, :decimal,  precision: 11,  scale: 8,  null: true
    add_column :users, :lon, :decimal,  precision: 11,  scale: 8,  null: true
  end
end
