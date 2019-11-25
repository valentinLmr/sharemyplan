class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :price
      t.integer :available_places
      t.string :identifiant
      t.string :password
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
