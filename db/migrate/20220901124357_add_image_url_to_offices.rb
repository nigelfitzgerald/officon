class AddImageUrlToOffices < ActiveRecord::Migration[7.0]
  def change
    add_column :offices, :image_url, :string
  end
end
