class AddAddressToOffices < ActiveRecord::Migration[7.0]
  def change
    add_column :offices, :address, :string
  end
end
