require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Employees < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, great_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :belongs_to, presence: true
end

class Stores < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
end
  puts @store4 = Store.find_by(name: "Richmond")


Store.create(name: "Chilliwack")
