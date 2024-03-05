require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# The two tables 'employees' and 'stores' are related via the store_id column

#Add some data into employees. Here's an example of one (note how it differs from how you create stores):
#@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Slay", hourly_rate: 100)
@store2.employees.create(first_name: "Rob", last_name: "Berto", hourly_rate: 90)
@store2.employees.create(first_name: "Ben", last_name: "Nitto", hourly_rate: 95)

