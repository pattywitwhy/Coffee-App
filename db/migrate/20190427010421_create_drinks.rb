class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :contents
      t.string :image

      t.timestamps null: false
    end
  end
end
