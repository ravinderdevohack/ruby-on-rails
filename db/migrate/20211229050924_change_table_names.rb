class ChangeTableNames < ActiveRecord::Migration[7.0]
  def change
    change_table :names do |t|
      t.string :fullname
      t.remove :fisrtname
      t.index :fullname
      t.string :number
      t.rename :lastname, :age
    end
  end
end
