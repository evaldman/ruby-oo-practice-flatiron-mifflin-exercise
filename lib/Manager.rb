class Manager
attr_accessor :age, :department, :name

@@all = []

def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
end

def self.save
    @@all
end

def employees # Is there another syntax we can use for this method?
    Employee.all.map {|emp| emp.name}
end

def roles
    Role.all.map {|role| role.name }
end

def self.all
    self.all.map {|man| man.name}
end

def self.department
    self.all.map {|man| man.department}.uniq
end

def self.avg_age
    ages = self.save.collect(&:age)
    (ages.sum.to_f / ages.count).round(2)
end

end
