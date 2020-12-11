require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "./department"
require 'pry'

manager1 = Manager.new("Michael", "sales", 48)

#Test your code here
employee1 = Employee.new("Jim", "Michael", 50000)

dep1 = Department.new("sales", manager1, employee1)

binding.pry
puts "done"
