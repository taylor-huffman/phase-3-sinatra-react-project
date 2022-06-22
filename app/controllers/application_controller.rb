class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/teachers/all' do
    teachers = Teacher.all
    teachers.to_json(include: :user_role)
  end

  get '/teachers/find' do
    name = params[:name]
    teacher = Teacher.find_by(name: name)
    teacher.to_json(include: [:user_role, { appointments: { include: [{ student: { include: :user_role } }, :subject] } }])
  end

  get '/teachers/:id' do
    teacher = Teacher.find(params[:id])
    teacher.to_json(include: [:user_role, { appointments: { include: [{ student: { include: :user_role } }, :subject] } }])
  end

  post '/teachers' do
    teacher = Teacher.create(
      name: params[:name]
    )
    teacher.to_json
  end

  delete '/teachers/:id' do
    teacher = Teacher.find(params[:id])
    teacher.destroy
    teacher.to_json
  end

  get '/students/all' do
    students = Student.all
    students.to_json(include: :user_role)
  end

  get '/students/find' do
    name = params[:name]
    student = Student.find_by(name: name)
    student.to_json(include: [:user_role, { appointments: { include: [{ teacher: { include: :user_role } }, :subject] } }])
  end

  get '/students/:id' do
    student = Student.find(params[:id])
    student.to_json(include: [:user_role, { appointments: { include: [{ teacher: { include: :user_role } }, :subject] } }])
  end

  post '/students' do
    student = Student.create(
      name: params[:name]
    )
    student.to_json
  end

  delete '/students/:id' do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end

  get '/subjects' do
    subjects = Subject.all
    subjects.to_json
  end

  # get '/appointments' do
  #   appointments = Appointment.all
  #   appointments.to_json
  # end

  # post '/appointments' do
  #   appointment = Appointment.create(
  #     date: params[:date],
  #     student_id: params[:student_id],
  #     teacher_id: params[:teacher_id],
  #     subject_id: params[:subject_id]
  #   )
  #   appointment.to_json
  # end

  # patch '/appointments/:id' do
  #   appointment = Appointment.find(params[:id])
  #   appointment.update(
  #     date: params[:date],
  #     student_id: params[:student_id],
  #     teacher_id: params[:teacher_id],
  #     subject_id: params[:subject_id]
  #   )
  #   appointment.to_json
  # end

  # delete '/appointments/:id' do
  #   appointment = Appointment.find(params[:id])
  #   appointment.destroy
  #   appointment.to_json
  # end

end
