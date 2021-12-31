class CreateTableNovelsOders < ActiveRecord::Migration[7.0]
  def change
    create_table :novels_oders do |t|
      t.belongs_to :order
      t.belongs_to :novel
      

      t.timestamps
    end
  end
end
