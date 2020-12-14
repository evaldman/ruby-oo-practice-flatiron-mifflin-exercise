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
        Employee.all.map {|emp| return emp.manager if emp.role == self}
    end

    def add_employee(name, salary, manager)
        # Is it possible to keep the naming convention (emp1, emp2, etc) when creating new objects with this method?
        #emp + "#{(Employee.all.count + 1).to_s}"
        Employee.new(name, salary, manager, self)
    end
    
end

