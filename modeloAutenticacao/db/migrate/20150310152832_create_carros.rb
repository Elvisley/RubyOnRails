class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :nome
      t.string :marca
      t.integer :ano

      t.timestamps
    end
  end
end
