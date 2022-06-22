puts "🌱 Seeding spices..."

puts "Creating user roles..."
role1 = UserRole.create(role: "Teacher")
role2 = UserRole.create(role: "Student")

puts "Creating teachers..."
teacher1 = Teacher.create(name: "Ms. Smith", user_role_id: role1.id)
teacher2 = Teacher.create(name: "Mrs. Johnson", user_role_id: role1.id)
teacher3 = Teacher.create(name: "Mr. Ernst", user_role_id: role1.id)
teacher4 = Teacher.create(name: "Ms. Boman", user_role_id: role1.id)
teacher5 = Teacher.create(name: "Miss. Spencer", user_role_id: role1.id)

puts "Creating students..."
student1 = Student.create(name: "Bobby Jones", user_role_id: role2.id)
student2 = Student.create(name: "Jeff Deez", user_role_id: role2.id)
student3 = Student.create(name: "Harry Holden", user_role_id: role2.id)
student4 = Student.create(name: "Henry Baumgarter", user_role_id: role2.id)
student5 = Student.create(name: "Roman Vazquez", user_role_id: role2.id)
student6 = Student.create(name: "Maria Lopez", user_role_id: role2.id)
student7 = Student.create(name: "Rashad Amaz", user_role_id: role2.id)
student8 = Student.create(name: "Lebron James", user_role_id: role2.id)
student9 = Student.create(name: "Michael Jordan", user_role_id: role2.id)
student10 = Student.create(name: "Ashley Ponce", user_role_id: role2.id)

puts "Creating subjects..."

subject1 = Subject.create(name: "Math")
subject2 = Subject.create(name: "English")
subject3 = Subject.create(name: "Science")
subject4 = Subject.create(name: "History")
subject5 = Subject.create(name: "Theater")
subject6 = Subject.create(name: "Health Fitness")

puts "Creating appointments..."
Appointment.create(date: Date.new(2023, 01, 06), subject_id: subject1.id, student_id: student1.id, teacher_id: teacher1.id)
Appointment.create(date: Date.new(2023, 01, 17), subject_id: subject2.id, student_id: student2.id, teacher_id: teacher5.id)
Appointment.create(date: Date.new(2023, 02, 05), subject_id: subject3.id, student_id: student1.id, teacher_id: teacher3.id)
Appointment.create(date: Date.new(2023, 02, 12), subject_id: subject4.id, student_id: student6.id, teacher_id: teacher1.id)
Appointment.create(date: Date.new(2023, 02, 15), subject_id: subject5.id, student_id: student5.id, teacher_id: teacher2.id)

puts "✅ Done seeding!"
