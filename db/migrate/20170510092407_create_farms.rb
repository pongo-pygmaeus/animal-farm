class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.string :state
      t.string :town
      t.references :farmer

      t.timestamps null: false
    end
  end
end
