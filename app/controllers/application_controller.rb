class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/teachers" do
    teachers = Teacher.all
    teachers.to_json
  end

  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/subjects" do
    subjects = Subject.all
    subjects.to_json
  end

  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

end
