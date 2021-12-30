class RemoveTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :suppliers
    drop_table :accounts
  end
end
