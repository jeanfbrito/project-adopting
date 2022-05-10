class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.date :birth
      t.string :size
      t.boolean :neutered
      t.boolean :vaccinated
      t.text :description

      t.timestamps
    end
  end
end
