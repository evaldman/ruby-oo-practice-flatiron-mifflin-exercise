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
        #Manager.all.select{|man| man.}
    end

    def self.paid_over(amount)
        #How do we make the code below return every employee it applies to?
        #How can we condense the code?

        self.all.select {|emp| return emp.name if emp.salary > amount}

    end

    def self.find_by_department(department_name)
        manager_guy = Manager.all.find {|man| man.department == department_name}
        employee_guy = Employee.all.find {|emp| emp.manager == manager_guy}
        employee_guy.name
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

    def get_promoted(new_role) 
        self.role = new_role
        self.salary += 1000
        self
    end

end
