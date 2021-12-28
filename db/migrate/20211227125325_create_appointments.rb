class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      # t.doctor_id :integer

      t.timestamps
    end
  end
end
