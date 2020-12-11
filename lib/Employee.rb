class Employee
    attr_reader :name
    attr_accessor :salary, :manager
    
    @@all = []
    
    def initialize(name, manager, salary)
            @name = name
            @manager = manager
            @salary = salary
            @@all << self
    end
    def self.all
        @@all
    end
    
end
