class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :number_of_places
      t.integer :total_price
      t.string :category

      t.timestamps
    end
  end
end
