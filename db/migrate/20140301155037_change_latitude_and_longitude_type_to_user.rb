class ChangeLatitudeAndLongitudeTypeToUser < ActiveRecord::Migration
  def change
    change_column :users, :latitude, :float, limit: 8, null: true
    change_column :users, :longitude, :float, limit: 8, null: true
  end
end
