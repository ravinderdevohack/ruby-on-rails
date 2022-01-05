class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :address
      t.string :password
      t.string :email
      t.string :alter_email
      t.string :phone
      t.string :alter_phone
      t.string :aadahar_no
      t.string :pan_no
      t.integer :user_type

      t.timestamps
    end
  end
end
