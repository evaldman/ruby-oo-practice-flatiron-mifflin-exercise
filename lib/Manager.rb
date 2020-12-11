class Manager
attr_reader :name
attr_accessor :age, :department

@@all = []

def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
end
def self.all
    @@all
end
def employees

    Department.all.select{|department| department.employee.manager == self}
    #binding.pry
end



end
