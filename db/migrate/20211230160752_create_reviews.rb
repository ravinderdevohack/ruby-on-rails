class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :rating
      t.belongs_to :book
      t.belongs_to :customer 

      t.timestamps
    end
  end
end
