class AddHpToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :hp, :integer
  end
end
