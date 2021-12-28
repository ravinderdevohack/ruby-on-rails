class AddBooknameToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :name, :integer
  end
end
