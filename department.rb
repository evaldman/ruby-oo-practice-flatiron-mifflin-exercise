class Department
@@all = []
attr_reader :name
attr_accessor :manager, :employee

    def initialize(name, manager, employee)
        @name = name
        @manager = manager
        @employee = employee
        @@all << self
    end

    def self.all
        @@all
    end





end