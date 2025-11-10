class Viking

    attr_accessor :name, :age, :health, :strength

    @@starting_health

    def initialize(name, age, health, strength)
        @name = name
        @age = age
        @health = @@starting_health
        @strength = strength
    end

    def take_damage(damage)
        self.health -= damage
        self.shout("OUCH!")  
    end

    def shout(str)
        puts str  
    end

    def sleep
        health += 1 unless health >= 99  
    end
end

oleg = Viking.new("Oleg", 19, 100, 8)
p oleg.health
p oleg.take_damage(10)