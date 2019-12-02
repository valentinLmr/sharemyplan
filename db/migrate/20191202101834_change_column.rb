class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :cagnotte, :float, :default => 5.00
  end
end
