class RemoveIdFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :id, :string
  end
end
