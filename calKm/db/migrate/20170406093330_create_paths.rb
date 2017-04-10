class CreatePaths < ActiveRecord::Migration[5.0]
  def change
    create_table :paths do |t|
      t.string :name
      t.date :date
      t.integer :horsepower
      t.integer :distance
      t.integer :total

      t.timestamps
    end
  end
end
