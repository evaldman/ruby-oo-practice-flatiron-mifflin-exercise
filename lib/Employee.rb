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

    def tax_bracket
        arr = []
        Employee.all.each do |emp|
            if (self.salary - emp.salary).abs.between?(1,1000) 
                 arr << emp.name
            end
        end
        arr
    end
   
    def self.search_by_role(pos)
        # POS should be a role String that connects to the role in an Employee object. The following code returns an empty array tho. 
        self.all.find_all {|emp| emp.role == pos }
        binding.pry
    end

    def get_promoted(role)
        # This method seems like the pets buy/sell method and the person conversation method from previous labs.
    end

end
