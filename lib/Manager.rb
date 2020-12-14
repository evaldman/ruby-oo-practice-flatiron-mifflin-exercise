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

def employees # Is there another syntax we can use for this method?
    Employee.all.map {|emp| emp.name}
end

def roles
    Role.all.map {|role| role.name }
end


def self.all_departments
    self.all.map {|man| man.department}.uniq
end

def self.avg_age
    ages = self.all.collect(&:age) #<-- What does this represent?
    (ages.sum.to_f / ages.count).round(2)
end

end
