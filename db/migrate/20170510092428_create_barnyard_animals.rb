class CreateBarnyardAnimals < ActiveRecord::Migration
  def change
    create_table :barnyard_animals do |t|
      t.string :name
      t.references :animal_type
      t.references :farm

      t.timestamps null: false
    end
  end
end
