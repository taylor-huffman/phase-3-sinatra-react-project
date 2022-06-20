class Student < ActiveRecord::Base
    has_many :appointments
    has_many :teachers, through: :appointments
    has_many :subjects, through: :appointments
end