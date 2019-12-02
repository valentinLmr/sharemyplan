class AddPriceToCotisations < ActiveRecord::Migration[5.2]
  def change
    add_monetize :cotisations, :price, currency: { present: false }
    add_column :cotisations, :state, :string
    add_column :cotisations, :checkout_session_id, :string
  end
end
