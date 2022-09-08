class AddColourToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :colour, :string
  end
end
