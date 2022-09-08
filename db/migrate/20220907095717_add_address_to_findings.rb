class AddAddressToFindings < ActiveRecord::Migration[7.0]
  def change
    add_column :findings, :address, :string
  end
end
