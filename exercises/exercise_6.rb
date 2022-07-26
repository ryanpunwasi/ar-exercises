require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
  
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jon", last_name: "Snow", hourly_rate: 40)
@store1.employees.create(first_name: "Jaime", last_name: "Lannister", hourly_rate: 100)
@store1.employees.create(first_name: "Sansa", last_name: "Stark", hourly_rate: 60)

@store2.employees.create(first_name: "Otto", last_name: "Hightower", hourly_rate: 40)
@store2.employees.create(first_name: "Brynden", last_name: "Rivers", hourly_rate: 90)
@store2.employees.create(first_name: "Bran", last_name: "Stark", hourly_rate: 20)
@store2.employees.create(first_name: "Roose", last_name: "Bolton", hourly_rate: 40)