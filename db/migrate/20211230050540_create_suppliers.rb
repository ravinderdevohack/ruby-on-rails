class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.belongs_to :supplier , index: {unique: true}, foreign_key: true

      t.timestamps
    end
  end
end
