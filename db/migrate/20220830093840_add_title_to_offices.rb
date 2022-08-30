class AddTitleToOffices < ActiveRecord::Migration[7.0]
  def change
    add_column :offices, :title, :text
  end
end
