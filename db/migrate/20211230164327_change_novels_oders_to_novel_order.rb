class ChangeNovelsOdersToNovelOrder < ActiveRecord::Migration[7.0]
  def change
    rename_table :novels_oders, :novels_orders
  end
end
