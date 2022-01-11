class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.date :signup_on
      t.integer :total_subscription
      t.belongs_to :bank_accounts

      t.timestamps
    end
  end
end
