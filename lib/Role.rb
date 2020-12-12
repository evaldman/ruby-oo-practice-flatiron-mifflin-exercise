class Role

attr_reader :name
attr_accessor :employee, :manager, :department

@@all = []

    def initialize(name)
        @name = name
        @employee = employee
        @manager = manager
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

end

