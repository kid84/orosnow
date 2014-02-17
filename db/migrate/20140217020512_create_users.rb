class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mail
      t.string :address
      t.references :timing, index: true

      t.timestamps
    end
  end
end
