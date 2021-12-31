class ChangeTableReview < ActiveRecord::Migration[7.0]
  def change
    change_table :reviews do |t|
      t.remove_references :book
      t.belongs_to :novel
    end
  end
end
