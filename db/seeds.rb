# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)
User.create!(name: "Super admin", email: "superadmin@example.com", password: "password", password_confirmation: "password", type: "Admin")
User.create!(name: "Admin one", email: "adminone@example.com", password: "password", password_confirmation: "password", type: "Admin")
User.create!(name: "Admin two", email: "admintwo@example.com", password: "password", password_confirmation: "password", type: "Admin")
User.create!(name: "Admin three", email: "adminthree@example.com", password: "password", password_confirmation: "password", type: "Admin")

User.create!(name: "Instructor one", email: "instructorone@example.com", password: "password", password_confirmation: "password", type: "Instructor")
User.create!(name: "Instructor two", email: "instructortwo@example.com", password: "password", password_confirmation: "password", type: "Instructor")
User.create!(name: "Instructor three", email: "instructorthree@example.com", password: "password", password_confirmation: "password", type: "Instructor")

User.create!(name: "Student one", email: "studentone@example.com", password: "password", password_confirmation: "password", type: "Student")
User.create!(name: "Student two", email: "studenttwo@example.com", password: "password", password_confirmation: "password", type: "Student")
User.create!(name: "Student three", email: "studentthree@example.com", password: "password", password_confirmation: "password", type: "Student")

Course.create!(course_number: 1, title: "course one", description: "on campus", start_date: "2016-03-05", end_date: "2016-05-05", status: "Active")
Course.create!(course_number: 2, title: "course two", description: "on campus", start_date: "2016-03-05", end_date: "2016-05-05", status: "Active")
Course.create!(course_number: 3, title: "course three", description: "on campus", start_date: "2016-03-05", end_date: "2016-05-05", status: "Active")
Course.create!(course_number: 4, title: "course four", description: "on campus", start_date: "2016-03-05", end_date: "2016-05-05", status: "Active")
Course.create!(course_number: 5, title: "course five", description: "on campus", start_date: "2016-03-05", end_date: "2016-05-05", status: "Inactive")

# Teachment.create!(instructor_id: 1, course_id: 1)
# Teachment.create!(instructor_id: 1, course_id: 2)
# Teachment.create!(instructor_id: 1, course_id: 3)
# Teachment.create!(instructor_id: 1, course_id: 4)
# Teachment.create!(instructor_id: 1, course_id: 5)
# Teachment.create!(instructor_id: 2, course_id: 1)
# Teachment.create!(instructor_id: 2, course_id: 2)
# Teachment.create!(instructor_id: 2, course_id: 3)
# Enrollment.create!(student_id: 1, course_id: 1, grade: nil, status: "Approved")
# Enrollment.create!(student_id: 1, course_id: 2, grade: nil, status: "Approved")
# Enrollment.create!(student_id: 1, course_id: 3, grade: nil, status: "Approved")
# Enrollment.create!(student_id: 2, course_id: 1, grade: nil, status: "Approved")