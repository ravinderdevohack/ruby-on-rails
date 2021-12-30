class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.belongs_to :doctor
      t.belongs_to :pateint

      t.timestamps
    end
  end
end
