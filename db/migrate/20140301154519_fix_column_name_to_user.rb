class FixColumnNameToUser < ActiveRecord::Migration
  def change
    rename_column :users, :lat, :latitude
    rename_column :users, :lon, :longitude
  end
end
