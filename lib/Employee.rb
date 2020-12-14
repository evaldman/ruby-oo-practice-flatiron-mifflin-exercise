class Employee
    attr_accessor :salary, :name, :manager, :role
    
    @@all = []
    
    def initialize(name, salary, manager, role)
            @name = name
            @salary = salary
            @manager = manager
            @role = role
            @@all << self
    end

    def self.all
        @@all
    end
    
    def manager_name
        self.manager.name
    end

    def self.paid_over(amount)
        self.all.select {|emp| return emp.name if emp.salary > amount}
    end
    
    def find_department
        Manager.save.select {|man| man.employees == self}
    end

    def tax_bracket # What enumerable can we use to shorten this code?
        arr = []
        Employee.all.each do |emp|
            if (self.salary - emp.salary).abs.between?(1,1000) 
                 arr << emp.name
            end
        end
        arr
    end
   
    def self.search_by_role(role_name)
        self.all.find_all {|emp| emp.role.name == role_name }
    end

    def get_promoted(new_role) # Can we make this method more dynamic?
        self.role = new_role
        self.salary + 1000
        self
          
    end

end
