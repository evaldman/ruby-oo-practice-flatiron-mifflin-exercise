class Manager
attr_accessor :age, :department, :name

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

def all_employees
    Employee.all.select {|emp| emp.manager == self}
end


def employees # Is there another syntax we can use for this method?
    self.all_employees.map {|emp| emp.name}
end

def roles
    self.all_employees.map {|emp| emp.role }.uniq
end

def self.all_departments
    self.all.map {|man| man.department}.uniq
end

def self.avg_age
    ages = self.all.collect(&:age) #<-- What does this represent?
    (ages.sum.to_f / ages.count).round(2)
end

end
