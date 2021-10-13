class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.text :abilities
      t.text :forms
      t.text :moves

      t.timestamps
    end
  end
end
