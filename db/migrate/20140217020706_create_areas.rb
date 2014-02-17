class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :code
      t.integer :snow_depth
      t.integer :total_snow_depth

      t.timestamps
    end
  end
end
