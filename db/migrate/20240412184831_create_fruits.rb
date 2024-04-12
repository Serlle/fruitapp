class CreateFruits < ActiveRecord::Migration[7.0]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :color
      t.string :flavor
      t.float :weight
      t.decimal :price, precision: 8, scale: 2
      t.boolean :availability
      t.string :image_url

      t.timestamps
    end
  end
end
