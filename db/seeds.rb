# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



ActiveRecord::Base.transaction do
	User.create([ {name: 'Student'}, {email: 'student@gmail.com'}, {password: '123'} ])
	User.create([ {name: 'Mentor'}, {email: 'mentor@gmail.com'}, {password: '123'}, {role: 'mentor'} ])
	User.create([ {name: 'Superadmin'}, {email: 'superadmin@gmail.com'}, {password: '123'}, {role: 'superadmin'} ])
end