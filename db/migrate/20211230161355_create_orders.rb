class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.integer :status
      t.belongs_to :customer

      t.timestamps
    end
  end
end
