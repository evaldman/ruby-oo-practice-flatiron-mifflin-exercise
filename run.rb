require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("Michael", "sales", 48)

#Test your code here
employee1 = Employee.new("Jim", "Michael", 50000)

binding.pry
puts "done"
