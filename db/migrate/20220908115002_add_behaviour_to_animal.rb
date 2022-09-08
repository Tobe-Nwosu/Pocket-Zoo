class AddBehaviourToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :behaviour, :string
  end
end
