class ChangeCloumnNameFromUserDetails < ActiveRecord::Migration[7.0]
  def change
    change_table :user_details do |t|
      t.rename :aadahar_no, :aadhar_no
    end
  end
end
