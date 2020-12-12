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
        Manager.save.select {|man| man.department}
    end

    def self.find_by_department(dep)
        binding.pry
        self.find_department.find {|ele| return self.name if ele.manager == dep}
       #  Manager.all.find {|man| return self.name if man.department == dep }
    end

    def department
        Department.all.select { |x| x.employee == self}
    end

end

