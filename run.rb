require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Role"
require 'pry'

# Managers
man1 = Manager.new("Michael", "Sales", 48)
man2 = Manager.new("Kelly", "Customer Service", 32)
man3 = Manager.new("Darrell", "Sales", 47)

# Employees
emp1 = Employee.new("Jim", 50000)
emp2 = Employee.new("Pam", 60000)
emp3 = Employee.new("Ryan", 75000)

# Roles
role1 = Role.new("Salesperson")
role2 = Role.new("Warehouse")
role3 = Role.new("HR")

binding.pry
puts "done"
