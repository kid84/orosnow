class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.string :name

      t.timestamps
    end
  end
end
