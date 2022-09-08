class AddHabitatToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :habitat, :string
  end
end
