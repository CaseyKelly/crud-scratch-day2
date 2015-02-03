class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.integer :size
      t.string :species
      t.boolean :maneater
      t.date :date_of_attack
      t.string :name
    end
  end
end
