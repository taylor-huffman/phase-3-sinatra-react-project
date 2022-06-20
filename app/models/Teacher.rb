class Teacher < ActiveRecord::Base
    has_many :appointments
    has_many :students, through: :appointments
    has_many :subjects, through: :appointments
end