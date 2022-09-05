class CreateFindings < ActiveRecord::Migration[7.0]
  def change
    create_table :findings do |t|
      t.string :date
      t.float :longitude
      t.float :latitude
      t.string :picture
      t.text :comment
      t.references :animal, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
