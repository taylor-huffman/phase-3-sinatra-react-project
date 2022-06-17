class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :student_id
      t.integer :teacher_id
      t.integer :subject_id
    end
  end
end
