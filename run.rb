require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Role"
require 'pry'

# Managers
man1 = Manager.new("Michael", "Sales", 48)
man2 = Manager.new("Kelly", "Customer Service", 32)
man3 = Manager.new("Darrell", "Sales", 47)

# Roles
role1 = Role.new("Salesperson")
role2 = Role.new("Recpetion")
role3 = Role.new("Vice President")

# Employees
emp1 = Employee.new("Jim", 61000, man1, role1)
emp2 = Employee.new("Pam", 60000, man1, role2)
emp3 = Employee.new("Ryan", 75000, man2, role3)

binding.pry
puts "done"
