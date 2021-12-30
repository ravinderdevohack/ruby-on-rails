class AddColumnToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :supplier_id, :integer
  end
end
