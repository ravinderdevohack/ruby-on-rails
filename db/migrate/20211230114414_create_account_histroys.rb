class CreateAccountHistroys < ActiveRecord::Migration[7.0]
  def change
    create_table :account_histroys do |t|
      t.integer :credit_rating
      t.belongs_to :account

      t.timestamps
    end
  end
end
