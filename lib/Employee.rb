class Employee
    attr_accessor :salary, :name
    
    @@all = []
    
    def initialize(name, salary)
            @name = name
            @salary = salary
            @@all << self
    end
    def self.all
        @@all
    end
    
    def department
        Department.all.select { |x| x.employee == self}
    end

end
