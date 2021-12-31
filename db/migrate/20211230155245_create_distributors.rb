class CreateDistributors < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
      t.string :name

      t.timestamps
    end
  end
end
