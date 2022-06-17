puts "🌱 Seeding spices..."

puts "Creating teachers..."
teacher1 = Teacher.create(name: "Ms. Smith")
teacher2 = Teacher.create(name: "Mrs. Johnson")
teacher3 = Teacher.create(name: "Mr. Ernst")
teacher4 = Teacher.create(name: "Ms. Boman")
teacher5 = Teacher.create(name: "Miss. Spencer")

puts "Creating students..."
student1 = Student.create(name: "Bobby Jones")
student2 = Student.create(name: "Jeff Deez")
student3 = Student.create(name: "Harry Holden")
student4 = Student.create(name: "Henry Baumgarter")
student5 = Student.create(name: "Roman Vazquez")
student6 = Student.create(name: "Maria Lopez")
student7 = Student.create(name: "Rashad Amaz")
student8 = Student.create(name: "Lebron James")
student9 = Student.create(name: "Michael Jordan")
student10 = Student.create(name: "Ashley Ponce")

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
