class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :brand
      t.string :gender
      t.integer :retail_price
      t.string :colors
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
