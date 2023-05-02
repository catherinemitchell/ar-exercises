require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Catherine", last_name: "Mitchell", hourly_rate: 75)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 75)
@store2.employees.create(first_name: "Jim", last_name: "Doe", hourly_rate: 80)

puts @store1