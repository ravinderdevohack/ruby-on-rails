class CreateNovels < ActiveRecord::Migration[7.0]
  def change
    create_table :novels do |t|
      t.string :title
      t.integer :published_year
      t.decimal :price
      t.boolean :out_of_print
      t.belongs_to :writer
      t.belongs_to :distributor

      t.timestamps
    end
  end
end
