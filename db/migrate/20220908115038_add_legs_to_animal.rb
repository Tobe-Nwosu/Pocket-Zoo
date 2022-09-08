class AddLegsToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :legs, :string
  end
end
