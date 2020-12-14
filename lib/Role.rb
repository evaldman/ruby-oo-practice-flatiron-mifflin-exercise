class Role

attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
       Employee.all.select {|emp| emp.role == self}
        
    end

    def managers
        #Express this with pretzels.
        employees.select{|emp| emp.manager}
        
    
    end

    def add_employee(name, salary, manager)
        Employee.new(name, salary, manager, self)
    end
    
end

