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

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
  validate :carry_mens_or_womens

  def carry_mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:carry_mens_or_womens, ": Stores must carry at least one of the men's or women's apparel")
    end
  end
end

store_name = gets.chomp!
store = Store.create(name: store_name)

store.errors.full_messages.each do | message |
  puts message
end

