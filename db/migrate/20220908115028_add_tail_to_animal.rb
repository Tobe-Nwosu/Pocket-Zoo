class AddTailToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :tail, :string
  end
end
