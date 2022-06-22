class Teacher < ActiveRecord::Base
    has_many :appointments
    has_many :students, through: :appointments
    has_many :subjects, through: :appointments
    belongs_to :user_role

    # def self.all_appointments
    #     all_appointments = []
    #     all.map do |t|
    #         if t.appointments != []
    #             all_appointments << t.appointments
    #         else
    #             false
    #         end
    #     end
    #     all_appointments
    # end

    def all_appointments
        self.appointments
    end
end