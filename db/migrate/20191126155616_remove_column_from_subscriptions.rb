class RemoveColumnFromSubscriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :price, :string
  end
end
