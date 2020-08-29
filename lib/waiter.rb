class Waiter
attr_accessor :name
attr_reader :years
@@all = []

    def initialize(name, years)
        @name = name
        @years = years
        @@all << self
    end

    def self. all
        @@all
    end

    def new_meal(customer, total, tip=0)
       Meal.new(self, customer,total, tip)
    end

    def meals
        Meal.all.find_all { |meal| meal.waiter == self}
    end

    def best_tipper
        best_tipper_meal = meals.max do | a, b| a.tip <=> b.tip
        end
        best_tipper_meal.customer
    end

end