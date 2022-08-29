class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :surface
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
