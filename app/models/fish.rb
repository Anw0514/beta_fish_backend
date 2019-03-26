class Fish < ApplicationRecord
    has_many :fights, dependent: :destroy
    has_many :opponents, through: :fights


    def getStats
        hp = rand(600..1400)
        case true
        when hp >=1200
            self.power = rand(600..800)
        when hp > 1000
            self.power = rand(800..1000)
        when hp > 800
            self.power = rand(1000..1200)
        else
            self.power = rand(1200..1400)
        end
        self.hp = hp
    end
end
