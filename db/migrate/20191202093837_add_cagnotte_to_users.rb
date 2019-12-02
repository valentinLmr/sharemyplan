class AddCagnotteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :cagnotte, :float
  end
end
