class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :name
      t.string :category
      t.decimal :price

      t.timestamps null: false
    end
  end
end
