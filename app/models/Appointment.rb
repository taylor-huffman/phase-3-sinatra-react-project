class Appointment < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student
    belongs_to :subject
end