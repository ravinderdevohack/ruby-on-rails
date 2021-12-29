class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.string :user
      t.string :organization
      t.decimal :amount
      t.date :date

      t.timestamps
    end
  end
end
