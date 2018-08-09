# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."
original_log_level = Rails.logger.level
Rails.logger.level = 3

instructor = Instructor.first_or_create(
  email: "test1@throod.com",
  password: "1234567890",
  password_confirmation: "1234567890",
)

school = School.first_or_create(
  name: "Instituto Mexicano Regina",
  instructors: [instructor],
)

course = FactoryBot.create(
  :course_with_modules,
  year: :k1,
)

CourseLicense.first_or_create(
  school: school,
  instructor: instructor,
  course: course,
)

Rails.logger.level = original_log_level
puts "Seeding complete"
